<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 05.02.19
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Dodaj dary</title>
    <title>Edytuj swoj profil</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="/css/style.css" />


</head>

<body>


<header class="header--main-page">

    <nav class="container container--70">
        <ul class="nav--actions">

            <li><a href="/user/logout" class="btn btn--small btn--without-border">Wyloguj sie</a></li>
            <li><a href="/" class="btn btn--small btn--without-border">Strona glowna</a></li>

        </ul>

        <ul>

            <li><a href="/user/editUser?id=${user.id}" class="btn btn--without-border active">Edytuj swoj profil</a></li>
            <li><a href="/gift/addGift?id=${user.id}" class="btn btn--without-border">Dodaj dary</a></li>
            <li><a href="/gift/userGifts?id=${user.id}" class="btn btn--without-border">Przegladaj swoje dary</a></li>
            <li><a href="/institution/institutions" class="btn btn--without-border">Fundacje i organizacje</a></li>

        </ul>
    </nav>


    <div class="slogan container container--90 newContainer">

            <form:form modelAttribute = "gift" method = "post" >

                <%--<form:errors path = "*" /> --%>

                <font size="4" face="Courier New" >
                <div class="form-group">


                <b>Nazwa przekazywanego daru</b><br>
                <form:input path = "name" />
                <form:errors path ="name" />
                <br>
                </div>

                <div class="form-group">
                <b>Opis:</b><br>
                <form:input path = "description" />
                <form:errors path ="description" />
                <br>
                </div>

                <div class="form-group">
                <b>Wybierz instytucje, ktorej chcesz powierzyc ten dar:</b><br>
                <form:select path="institution" multiple="false">
                    <form:options items="${institutions}" itemValue ="id" itemLabel="name" />
                </form:select>
                <br>
                </div>

                <div class="form-group">
                <br>
                <input type = "submit" value="Dodaj dar" />
                </div>
                </font>

            </form:form>
    </div>



</header>



<section class="login-page" >



</section>

















</body>


</html>
