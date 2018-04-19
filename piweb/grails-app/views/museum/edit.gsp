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
    <h3><g:link controller="museum" action="delete" params="[id: museum.id]">Remover Museu</g:link></h3>
    <h10>criado por ${museum.user.username}</h10>
</p>
    <g:img uri="${museum.image?.url}"/>
    <h5>${museum.description}</h5>
    <g:each in="${museum.itens}" var="item">
        <p></p>
        ${item.name}
        <g:img uri="${item.images[0]?.url}"/> 
        ${item.description}
    </g:each>
</div>
</body>
</html>