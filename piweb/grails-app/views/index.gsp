<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
    <div ng-controller="museumController">
        <g:each in="${museums}">
            <p>
                <h2>${it.name}</h2>
                <h10>criado por ${it.user.username}</h10>
            </p>
            <g:img uri="${it.image.url}"/>
            <h5>${it.description}</h5>
        </g:each>
    </div>
</body>
</html>