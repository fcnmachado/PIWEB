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
            <h2> <g:link controller="museum" action="show" id="${it.id}">${it.name}</g:link> </h2>
            <h5>${it.description}</h5>
            <g:img uri="${it.image?.url}"/>
        </g:each>
    </div>
</body>
</html>