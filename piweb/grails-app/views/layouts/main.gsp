<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><g:layoutTitle default="PIWEB - Felipe Cordeiro Nobre Machado"/></title>

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <asset:link href="application.css" rel="stylesheet" />

    <!-- Bootstrap core JavaScript -->
    <asset:javascript src="jquery-2.2.0.min.js"></asset:javascript>
    <asset:javascript src="bootstrap.js"></asset:javascript>

    <g:layoutHead/>
</head>

<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
        <div class="container">
            <g:link class="navbar-brand" controller="museum" action="list">
                <asset:image src="piweb-logo.png" alt="PI Web" />
            </g:link>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <sec:ifNotLoggedIn>
                        <li class="nav-item">
                            <g:link controller="user" action="show" class="nav-link">
                                Entrar
                            </g:link>
                        </li>
                        <li class="nav-item">
                            <g:link controller="user" action="create" class="nav-link">
                                Cadastro
                            </g:link>
                        </li>
                    </sec:ifNotLoggedIn>
                </ul>
            </div>
        </div>
    </nav>

    <!-- View Content -->
    <section class="view-container">
        <g:layoutBody/>
    </section>

    <!-- Footer -->
    <footer class="py-5 bg-black">
        <div class="container">
            <p class="m-0 text-center text-footer small">Copyright &copy; Felipe Machado's Final Exam - 2018</p>
        </div>
    </footer>
</body>

</html>
