<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<div>
    <g:link controller="museum" action="createItem" params="[museumId: museum.id]">Adicionar Item</g:link>
    <p>
    <h2>${museum.name}</h2>
    <h10>criado por ${museum.user.username}</h10>
    </p>
    <g:img uri="${museum.image?.url}"/>
    <h5>${museum.description}</h5>
    <g:each in="${museum.itens}" var="item">
        <g:each in="${item.images}" var="image">
            <g:img uri="${image?.url}"/>
        </g:each>
    </g:each>
</div>
</body>
</html>