<%@ page import="java.sql.*,java.util.*" %>
    <% String appName="PayRoll Solutions" ; String pageName="Signup" ; String full_name, email,password, role ; int
        status=1; Connection conn; PreparedStatement pst; ResultSet rs; Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root",""); String
        insSql="INSERT INTO users(full_name,email , password, role) VALUES (?,?,?,?)" ; %>
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
                            <h2 class="header">Sign Up</h2>
                            <hr />
                            <div class="well">
                                <% if(request.getParameter("btnRegister") !=null ){
                                    full_name=request.getParameter("full_name"); email=request.getParameter("email");
                                    password=request.getParameter("password"); role="Admin" ; %>

                                    <% if(full_name !=null && email !=null && password !=null && role !=null ){
                                        pst=conn.prepareStatement(insSql); pst.setString(1,full_name);
                                        pst.setString(2,email); pst.setString(3,password); pst.setString(4,role); try {
                                        pst.executeUpdate(); } catch (Exception e) { out.println(e);
                                        e.printStackTrace(); } %>
                                        <p class="alert alert-success" role='alert'>
                                            Registeration Was Successful!
                                        </p>
                                        <% }else{ %>
                                            <p class="alert alert-danger" role="alert">
                                                Error: Registration Not Successful
                                            </p>
                                            <% } } %>
                            </div>
                            <form method="post" action="register.jsp">
                                <div class="mb-3">
                                    <label class="form-label" for="full_name">Full Name:</label>
                                    <input class="form-control" type="text" name="full_name" id="full_name"
                                        placeholder="Enter Full Name" required />
                                </div>
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
                                <button name="btnRegister" class="btn btn-primary" type="submit">Register</button>
                                <a href="./login.jsp" class="btn btn-link">Login</a>
                            </form>
                        </div>
                        <div class="col-md-3">
                        </div>
                    </div>

            </div>
            <%@ include file="includes/footer.jsp" %>
        </body>

        </html>