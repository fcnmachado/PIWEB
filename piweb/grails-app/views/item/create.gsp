<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
Criar Item
<g:uploadForm controller="museum" action="saveItem">
    <input type="hidden" name="museumId" value="${museum.id}">
    name <input type="text" name="name"/>
    description <input type="text" name="description"/>
    Autor <input type="text" name="author"/>
    <input type="file" name="imageFile" />
    <g:submitButton name="Criar" value="Criar"/>
</g:uploadForm>

</body>
</html>