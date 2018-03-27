<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>
    <div ng-controller="museumController">
        First Name: <input type="text" ng-model="firstName"><br>
        Last Name: <input type="text" ng-model="lastName"><br>
        <br>
        Full Name: {{firstName + " " + lastName}}
    </div>
    <g:link controller="admin" action="index">Entrar</g:link>
</body>
</html>