<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 05.02.19
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>zalogowany jako ${user.login}</title>

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

    <div class="slogan container container--90">
        <div class="slogan--item">

            <ul class="slogan--buttons" style = "position:relative; left:-200px;" >
                <li><a href="#" class="btn btn--large">Zorganizuj zbiórkę</a></li>
            </ul>

        </div>
    </div>

</header>



<section class="stats">


    <div class="container container--85">

        <h1>
            Zobacz, jak bardzo jestes szczodry! <br />
        </h1>

        <div class="stats--item">
            <em>10</em>
            <h3>Oddanych worków</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius est beatae, quod accusamus illum tempora!</p>
        </div>

        <div class="stats--item">
            <em>5</em>
            <h3>Wspartych organizacji</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laboriosam magnam, sint nihil cupiditate quas quam.</p>
        </div>

        <div class="stats--item">
            <em>7</em>
            <h3>Zorganizowanych zbiórek</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quos dolores commodi error. Natus, officiis vitae?</p>
        </div>
    </div>


</section>




<script src="js/app.js"></script>





</body>



</html>
