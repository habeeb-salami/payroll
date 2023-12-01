<nav class="navbar sticky-top navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="./">
            <%= appName %>
        </a>
        <form class="d-flex">
            <input class="form-control me-2" type="email" id="login_email" name="login_email" placeholder="email"
                aria-label="email" />
            <input class="form-control me-2" id="login_password" name="login_password" type="password"
                placeholder="password" aria-label="password" />
            <button class="btn btn-outline-success" type="submit">Login</button>
        </form>
    </div>
</nav>