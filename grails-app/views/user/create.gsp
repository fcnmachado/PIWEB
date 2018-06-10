<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
    <section class="main-area container-fluid">
        <header>
            <h1 class="offset-md-3 col-md-6"> cadastro </h1>

            <h2 class="offset-md-3 col-md-6"> cadastre-se para acesso exclusivo ao painel administrativo </h2>
        </header>

        <div class="col-md-6 offset-md-3">

            <div class="card bg-light mb-3">
                <div class="card-header">Preencha os campos abaixo com seus dados</div>
                <div class="card-body">

                    <g:form controller="user" action="save">
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
                                <label for="name">Nome:</label>
                                <input type="text" class="form-control" id="name" name="name">
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6 offset-md-3">
                                <label for="lastName">Sobrenome:</label>
                                <input type="text" class="form-control" id="lastName" name="lastName">
                            </div>
                        </div>


                        <div id="submit" class="row align-items-center justify-content-center">
                            <g:submitButton name="Cadastrar" value="CADASTRAR" class="btn btn-primary"/>
                        </div>

                    </g:form>
                </div>
            </div>
        </div>
    </section>


</body>
</html>