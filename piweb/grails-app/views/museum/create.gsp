<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<g:uploadForm controller="museum" action="save">
    name <input type="text" name="name"/>
    description <input type="text" name="description"/>
    <input type="file" name="imageFile" />
    <g:submitButton name="Criar" value="Criar"/>
</g:uploadForm>
</body>
</html>