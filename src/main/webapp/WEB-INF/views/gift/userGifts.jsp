<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <title>Twoje dary</title>
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

        </ul>

        <ul>

            <li><a href="/user/editUser?id=${user.id}" class="btn btn--without-border active">Edytuj swoj profil</a></li>
            <li><a href="/gift/addGift?id=${user.id}" class="btn btn--without-border">Dodaj dary</a></li>
            <li><a href="/gift/userGifts?id=${user.id}" class="btn btn--without-border">Przegladaj swoje dary</a></li>
            <li><a href="/institution/institutions" class="btn btn--without-border">Fundacje i organizacje</a></li>

        </ul>
    </nav>

</header>



<div class="container">

    <table border="4" >


        <tr>
            <td><b>Nazwa daru</b></td>
            <td><b>Opis</b></td>
            <td><b>Instytucja, ktorej chcesz przekazac ten dar</b></td>
        <tr>


            <c:forEach items="${gifts}" var="gift">


        <tr>
            <td>${gift.name}</td>
            <td>${gift.description}</td>
            <td>${gift.institution}</td>
        </tr>


        </c:forEach>


    </table>

</div>
















</body>


</html>
