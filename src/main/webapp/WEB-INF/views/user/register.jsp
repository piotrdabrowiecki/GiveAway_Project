<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 05.02.19
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <title>Register</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css" />

</head>



<body>


<header>
    <nav class="container container--70">
        <ul class="nav--actions">
            <li><a href="#">Zaloguj</a></li>
            <li class="highlighted"><a href="#">Załóż konto</a></li>
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

<section class="login-page">

    <h2>Załóż konto</h2>

    <form:form modelAttribute = "user" method = "post" >

        <div class="form-group">
            <form:input path="email" type="email" name="email"  placeholder="Email" />
            <form:errors path ="email" />
        </div>

        <div class="form-group">
            <form:input path = "login"  name="login" placeholder="Podaj login" />
            <form:errors path ="login" />
        </div>

        <div class="form-group">
            <form:input path = "password"  name="password" placeholder="Hasło" />
            <form:errors path ="password" />
        </div>

        <%--

        <div class="form-group">
            <form:input path = "password"  name="password2" placeholder="Powtórz hasło" />
            <form:errors path ="password" />
        </div>

        --%>


        <div class="form-group form-group--buttons">

            <a href="login" class="btn btn--without-border">Zaloguj się</a>

            <input type = "submit" value="Załóż konto" />

        <%-- <button class="btn" type="submit">Załóż konto</button> --%>

     </div>
     </form:form>



</section>



<footer>
 <div class="contact">
     <h2>Skontaktuj się z nami</h2>
     <h3>Formularz kontaktowy</h3>
     <form>
         <div class="form-group form-group--50">
             <input type="text" name="name" placeholder="Imię" />
         </div>
         <div class="form-group form-group--50">
             <input type="text" name="surname" placeholder="Nazwisko" />
         </div>

         <div class="form-group">
         <textarea
                 name="message"
                 placeholder="Wiadomość"
                 rows="1"
         ></textarea>
         </div>

         <button class="btn" type="submit">Wyślij</button>
     </form>
 </div>
 <div class="bottom-line">
     <span class="bottom-line--copy">Copyright &copy; 2018</span>
     <div class="bottom-line--icons">
         <a href="#" class="btn btn--small"
         ><img src="images/icon-facebook.svg"
         /></a>
         <a href="#" class="btn btn--small"
         ><img src="images/icon-instagram.svg"
         /></a>
     </div>
 </div>
</footer>





</body>



</html>
