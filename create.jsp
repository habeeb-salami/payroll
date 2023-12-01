<%@ page import="java.io.*,java.util.*,java.sql.*" %>
    <%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <% String appName="PayRoll Solutions" ; String pageName="Create New Employee" ; String name,email,phone,
            address,status,tenure,role; Connection conn; PreparedStatement pst; ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root",""); String
            insSql="INSERT INTO Employees ( Name , Email , Phone , Address , Tenure , Status , Role) VALUES (?, ?,?, ?, ?, ?, ?)"
            ; %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <title>
                    <%= appName+" : "+pageName %>
                    </title>
                    <meta name=" author" content="Habeeb" />
                    <link rel="stylesheet" href="styles/bootstrap.min.css" />
            </head>

            <body>
                <%@ include file="includes/navbar.jsp" %>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-6">
                                <h2 class="header">
                                    <%= pageName %>
                                </h2>

                                <hr />
                                <div class="well">
                                    <% if(request.getParameter("saveRecords") !=null ){
                                        name=request.getParameter("name"); email=request.getParameter("email");
                                        phone=request.getParameter("phone"); role=request.getParameter("role");
                                        address=request.getParameter("address"); status=request.getParameter("status");
                                        tenure=request.getParameter("tenure"); %>

                                        <% if(name !=null && email !=null && phone !=null && address !=null && role
                                            !=null && tenure !=null ){ pst=conn.prepareStatement(insSql);
                                            pst.setString(1,name); pst.setString(2,email); pst.setString(3,phone);
                                            pst.setString(4,address); pst.setString(5,tenure); pst.setString(6,status);
                                            pst.setString(7,role); pst.executeUpdate(); %>
                                            <p class="alert alert-success" role='alert'>
                                                Records Created Successfully!
                                            </p>
                                            <% }else{ %>
                                                <p class="alert alert-danger" role="alert">
                                                    Error: Record Not Created!
                                                </p>
                                                <% } } %>
                                </div>
                                <form method="post" action="">
                                    <div class="mb-3">
                                        <label class="form-label" for="name">Name:</label>
                                        <input class="form-control" type="text" name="name" id="name"
                                            placeholder="Full Name" required />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="email">Email:</label>
                                        <input class="form-control" type="email" name="email" id="email"
                                            placeholder="Email" required />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="phone">Phone:</label>
                                        <input class="form-control" type="tel" name="phone" id="phone"
                                            placeholder="Phone Number" />
                                    </div>
                                    <div class="mb-3">
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" type="checkbox" name="status" id="status"
                                                value="true" checked />
                                            <label class="form-check-label" for="status">Still
                                                Active:</label>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label class=" form-label" for="role">Role:</label>
                                        <input class="form-control" type="text" name="role" id="role" list="roles" />
                                        <datalist id="roles">
                                            <option value="CEO" />
                                            <option value="Designer" />
                                            <option value="Project Manager" />
                                            <option value="Backend Developer" />
                                            <option value="Frontend Developer" />
                                        </datalist>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="tenure">Tenure:</label>
                                        <input class="form-range" type="range" name="tenure" id="tenure" min="1"
                                            max="35" /><br />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="address">Address:</label>
                                        <textarea class="form-control" name="address" id="address" rows="3"
                                            placeholder="Employees Address"></textarea>
                                    </div>
                                    <button name="saveRecords" id="saveRecords" class="btn btn-primary"
                                        type="submit">Save
                                        Records</button>
                                </form>
                            </div>
                            <div class="col-md-3">
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