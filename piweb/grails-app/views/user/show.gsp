<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
    <g:link controller="museum" action="create">Criar Novo Museu</g:link>
    <div>
        <g:each in="${user.museums}">
            <p>
            <h2>${it.name}</h2>
            <h5>${it.description}</h5>
        </g:each>
</div>
</body>
</html>