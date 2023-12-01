<%@ page import="java.sql.*,java.util.*" %>
    <%! String appName="Employee Solutions" ; String pageName="Login Page" ; %>
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
                <header class="header">
                    <h1>
                        <a href="./">
                            <%= appName %>
                        </a>
                    </h1>
                </header>
                <div class="row">
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-6">
                        <h2 class="header">Login</h2>
                        <hr />
                        <form method="post" action="login.jsp">
                            <label class="form-label" for="email">Email:</label>
                            <input class="form-control" type="email" name="email" id="email" placeholder="Email"
                                required />
                            <label class="form-label" for="password">Password:</label>
                            <input class="form-control" type="password" name="password" id="password"
                                placeholder="Password" />
                            <button class="btn btn-primary" type="submit">Login</button>
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