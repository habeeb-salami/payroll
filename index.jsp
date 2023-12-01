<%@ page import="java.sql.*,java.util.*" %>
    <%! String appName="PayRoll Solutions" ; String pageName="Home Page" ; %>
        <% Connection conn; PreparedStatement pst; ResultSet rs; Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root",""); String
            sqlQueries="SELECT * FROM Employees" ; Statement st=conn.createStatement(); rs=st.executeQuery(sqlQueries);
            %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <title>PayRoll Solution</title>
                <meta name="author" content="Habeeb">
                <link rel="stylesheet" href="styles/bootstrap.min.css" />
            </head>

            <body>
                <%@ include file="includes/navbar.jsp" %>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-3">
                                <div class=" header-main">
                                    <%@ include file="includes/sidebar.jsp" %>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <h2 class="header">All Employees</h2>
                                <table class="table table-striped table-hover">
                                    <thead class="">
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Role</th>
                                        <th>Status</th>
                                        <th>Tenure In Service</th>
                                        <th>Contact Address</th>
                                        <th>Enroled Date</th>
                                        <th></th>
                                    </thead>
                                    <tbody>
                                        <% while (rs.next()) { %>
                                            <tr class="list">
                                                <td>
                                                    <%= rs.getString("Name") %>
                                                </td>
                                                <td>
                                                    <%= rs.getString("Email")%>
                                                </td>
                                                <td>
                                                    <%= rs.getString("Phone") %>
                                                </td>
                                                <td>
                                                    <%=rs.getString("Role") %>
                                                </td>
                                                <td>
                                                    <%=rs.getString("Status") %>
                                                </td>
                                                <td>
                                                    <%=rs.getString("Tenure") %>
                                                </td>
                                                <td>
                                                    <p>
                                                        <%=rs.getString("Address") %>
                                                    </p>
                                                </td>
                                                <td>
                                                    <%=rs.getString("Created_at") %>
                                                </td>
                                                <td>
                                                    <a class="btn btn-warning"
                                                        href='./?status=update&Id=<%=rs.getString("Id")%>'>Update</a>
                                                    <a class="btn btn-danger"
                                                        href='./?status=delete&Id=<%=rs.getString("Id")%>'>Delete</a>
                                                </td>
                                            </tr>
                                            <% } %>
                                    </tbody>
                                    <tfoot></tfoot>
                                </table>
                            </div>
                        </div>
                        <footer class=" footer">
                            Footer Area
                        </footer>
                    </div>
                    <script src="js/popper.min.js"></script>
                    <script src="js/jquery.min.js"></script>
                    <script src="js/bootstrap.bundle.min.js"></script>
            </body>

            </html>