<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
    <div ng-controller="museumController">

        <div class="-search">
            <g:form controller="museum" action="list">
                Nome da exposiçao<input type="text" name="museumName">
                <g:submitButton name="Buscar"/>
            </g:form>
        </div>
        <div class="row">
            <g:each in="${museums}">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <h1>${it.name}</h1>
                <h10>criado por ${it.user.username}</h10>
                <g:link controller="museum" action="show" id="${it.id}">
                    <img class="img-thumbnail" src="${it.image?.url}"/>
                </g:link>
                <h5>${it.description}</h5>
            </div>
            </g:each>
        </div>

    </div>

</body>
</html>