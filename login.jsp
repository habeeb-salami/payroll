<%@ page import="java.sql.*,java.util.*" %>
    <% String appName="PayRoll Solutions" ; String pageName="Login Page" ; String email, password, fullName,userEmail;
        Connection conn; PreparedStatement pst; ResultSet rs; Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root",""); String
        insSql="SELECT * FROM users WHERE email=? AND password =?" ; %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>
                <%= appName+" : "+pageName %>
            </title>
            <meta name=" author" content="Habeeb" />
                <link rel="stylesheet" href="styles/bootstrap.min.css" />
        </head>

        <body>
            <div class="container-fluid">
                <%@ include file="includes/navbar.jsp" %>
                    <div class="row">
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-6">
                            <h2 class="header">Login</h2>
                            <hr />
                            <div class="well">
                                <% if(request.getParameter("btnLogin") !=null ){ email=request.getParameter("email");
                                    password=request.getParameter("password"); if( email !=null && password !=null ){
                                    try { pst=conn.prepareStatement(insSql); pst.setString(1,email);
                                    pst.setString(2,password); rs=pst.executeQuery(); while(rs.next()){
                                    fullName=rs.getString("full_name"); userEmail=rs.getString("email");
                                    if(fullName!=null && userEmail !=null){ HttpSession session=request.getSession();
                                    session.setAttribute("name", fullName); RequestDispatcher
                                    dispatcher=request.getRequestDispatcher("index.jsp"); dispatcher.forward(request,
                                    response); %>
                                    <p class="alert alert-success" role='alert'>
                                        Welcome <%= fullName %>
                                    </p>
                                    <% }else{ %>
                                        <p class="alert alert-danger" role="alert">
                                            Error: Login Not Successful
                                        </p>
                                        <% } } %>
                                            <p class="alert alert-danger" role="alert">
                                                Invalid Email/Password
                                            </p>
                                            <% } catch (Exception e) { out.println(e); e.printStackTrace(); } }else{ %>
                                                <p class="alert alert-danger" role="alert">
                                                    Error: Login Not Successful
                                                </p>
                                                <% } } %>
                            </div>
                            <form id="loginForm" method="post" action="login.jsp">
                                <div class="mb-3">
                                    <label class="form-label" for="email">Email:</label>
                                    <input class="form-control" type="email" name="email" id="email" placeholder="Email"
                                        required />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="password">Password:</label>
                                    <input class="form-control" type="password" name="password" id="password"
                                        placeholder="Password" />
                                </div>
                                <button name="btnLogin" class="btn btn-primary" type="submit">Login</button>
                                <a href="./register.jsp" class="btn btn-link">Sign Up</a>
                            </form>
                        </div>
                        <div class="col-md-3">
                        </div>
                    </div>

            </div>
            <%@ include file="includes/footer.jsp" %>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $("#loginForm").validate({
                            rules: {
                                email: {
                                    required: true,
                                    email: true
                                },
                                password: "required",
                            },
                            messages: {
                                email: {
                                    required: "Please enter email",
                                    email: "Please enter a valid email address"
                                },
                                password: "Please enter password"
                            }
                        });
                    });
                </script>
        </body>

        </html>