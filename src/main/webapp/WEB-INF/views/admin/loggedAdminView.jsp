<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 05.02.19
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jestes zalogowany jako ${user.login}</title>

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="/css/style.css" />


</head>
<body>



<section class="admin">

    <ul class="nav--actions">

        <li><a href="/user/logout" class="btn btn--small btn--without-border">Wyloguj sie</a></li>
        <li><a href="/" class="btn btn--small btn--without-border">Strona glowna</a></li>

    </ul>

    <div class="container container--85">

        <h1>
             <br />
        </h1>

        <div class="stats--item">
            <em></em>
            <h3>Zarzadzaj adminami</h3>
            <p> <li><a href="/admin/admins" class="btn btn--without-border active">Zarzadzaj adminami</a></li></p>
        </div>

        <div class="stats--item">
            <em></em>
            <h3>Edytuj instytucje</h3>
            <p> <li><a href="/institution/institutions" class="btn btn--without-border active">Edytuj dostepne instytucje</a></li></p>
        </div>

        <div class="stats--item">
            <em></em>
            <h3>Edytuj uzytkownikow</h3>
            <p> <li><a href="/user/users" class="btn btn--without-border active">Edytuj uzytkownikow</a></li></p>
        </div>

        <div class="stats--item">
            <em></em>
            <h3>Przegladaj przekazane dary</h3>
            <p> <li><a href="/gift/gifts" class="btn btn--without-border active">Przegladaj liste darow</a></li></p>
        </div>

    </div>


</section>


<header class="header--main-page">



</header>


<script src="js/app.js"></script>




</body>
</html>
