<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<div>
    <h2>${museum.name}</h2>
    <h10>criado por ${museum.user.username}</h10>
    </p>
    <g:img uri="${museum.image?.url}"/>
    <h5>${museum.description}</h5>
    <div>
    <g:each in="${museum.itens}" var="item">
        <p></p>
        ${item.name}
        <g:img uri="${item.images[0]?.url}"/> 
        ${item.description}
    </g:each>
</div>
</body>
</html>