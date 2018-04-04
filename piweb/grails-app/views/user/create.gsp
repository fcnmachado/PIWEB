<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
    <g:form controller="user" action="save">
        Email : <input type="tex" name="username"/>
        Senha : <input type="password" name="password"/>
        Nome  : <input type="text" name="name">
        Sobrenome : <input type="text" name="lastName"/>
        <g:submitButton name="Cadastrar"/>
    </g:form>
</body>
</html>