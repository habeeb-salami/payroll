<%@ page session="false" trimDirectiveWhitespaces="true" import="java.sql.*,java.util.*" %>
    <% String appName="PayRoll Solutions" ; String pageName="500" ; ; %>
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
                            <h1>500 Internal Server Error!</h1>
                            <p>
                                You are not authorized to view this page.
                            </p>
                        </div>
                        <div class="col-md-3">
                        </div>
                    </div>

            </div>
            <%@ include file="includes/footer.jsp" %>
        </body>

        </html>