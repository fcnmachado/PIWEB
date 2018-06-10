<html>
<head>
    <meta name="layout" content="${gspLayout ?: 'main'}"/>
    <title><g:message code='springSecurity.login.title'/></title>
</head>

<body>
    <section class="main-area container-fluid">
        <header>
            <h1 class="offset-md-3 col-md-6"> entrar </h1>

            <h2 class="offset-md-3 col-md-6"> acesso restrito ao painel administrativo </h2>
        </header>

        <div class="col-md-6 offset-md-3">

            <div class="card bg-light mb-3">
                <div class="card-header"><g:message code='springSecurity.login.header'/></div>
                <div class="card-body">
                    <h5 class="card-title">
                        <g:if test='${flash.message}'>
                            <div class="login_message">${flash.message}</div>
                        </g:if>
                    </h5>

                    <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">
                        <div class="row">
                            <div class="form-group col-md-6 offset-md-3">
                                <label for="username"><g:message code='springSecurity.login.username.label'/>:</label>
                                <input type="text" class="form-control" id="username" name="username">
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6 offset-md-3">
                                <label for="password"><g:message code='springSecurity.login.password.label'/>:</label>
                                <input type="password" class="form-control" id="password" name="password">
                            </div>
                        </div>


                        <div class="row">
                            <div class="form-group col-md-6 offset-md-3">
                                <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                                <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
                            </div>
                        </div>

                        <div id="submit" class="row align-items-center justify-content-center">
                            <g:submitButton name="Criar" value="LOGIN" class="btn btn-primary"/>
                        </div>

                    </form>
                </div>
            </div>


            <div id="create" class="row align-items-center justify-content-center">
                <g:link controller="user" action="create" class="btn btn-default">Cadastre-se</g:link>
            </div>

        </div>
    </section>

    <script>
        (function() {
            document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
        })();
    </script>
</body>
</html>
