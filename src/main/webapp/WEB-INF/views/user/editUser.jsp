<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 05.02.19
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Edytuj swoj profil</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css" />

</head>

<body background="/images/footer-bg.jpg" class="edit">


<header>

    <nav class="container container--70">

        <ul class="nav--actions">
            <li class="highlighted"><a href="/user/logout">Wyloguj sie</a></li>
        </ul>

        <ul>
            <li><a href="#">Start</a></li>
            <li><a href="#">O co chodzi?</a></li>
            <li><a href="#">O nas</a></li>
            <li><a href="#">Fundacje i organizacje</a></li>
            <li><a href="#">Kontakt</a></li>
        </ul>

    </nav>

</header>


<section class="login-page" >

<form:form modelAttribute = "editUser" method = "post" >



<div class="form-group">
    <td><b>Email</b></td><br>
    <form:input path = "email" /><br>
    <form:errors path ="email" /><br>
</div>
<div class="form-group">
    <td><b>Login</b></td><br>
    <form:input path = "login" /><br>
    <form:errors path ="login" /><br>
</div>
<div class="form-group">
    <td><b>Password</b></td><br>
    <form:input path = "password" /><br>
    <form:errors path ="password" /><br>
</div>

    <br>
    <br>
    <input type = "submit" value="Aktualizuj"/>



</form:form>

</section>





</body>


</html>
