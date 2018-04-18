<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width = device-width, initial-scale = 1"/>
    <title>
        <g:layoutTitle default="PIWEB - Felipe Cordeiro Nobre Machado"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

    <asset:javascript src="controllers.js"/>

    <g:layoutHead/>
</head>
<body>

    <div class="container">

        <div class="page-header">

            <div>
            <g:link controller="museum" action="list"><h1>Minhas Exposições Online</h1></g:link>
            </div>
            <div>
                <sec:ifNotLoggedIn>
                    <g:link controller="user" action="show">
                        <button class="btn btn-outline-success my-2 my-sm-0">Entrar</button>
                    </g:link>
                </sec:ifNotLoggedIn>

                <sec:ifLoggedIn>
                <g:if test="${user != null}">
                    <g:link controller="user" action="show" class="nav-link">${user?.name}<span class="sr-only">(current)</span></g:link>
                </g:if>
                <g:link controller="logout">
                    <button class="btn btn-outline-fail my-2 my-sm-0">Sair</button>
                </g:link>
            </sec:ifLoggedIn>
            </div>

        </div>

        <div  class="jumbotron" ng-app="piweb">
            <g:layoutBody/>
        </div>

        <div class="footer" role="contentinfo"></div>

        <div id="spinner" class="spinner" style="display:none;">
            <g:message code="spinner.alt" default="Loading&hellip;"/>
        </div>

    </div>



    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

</body>
</html>
