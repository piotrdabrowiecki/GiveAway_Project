<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 05.02.19
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Instytucje</title>

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="/css/style.css" />

</head>
<body>



<div class="container">

    <table border="4" >


        <tr>
            <td><b>Nazwa instytucji</b></td>
            <td><b>Opis</b></td>
            <td><b>Miasto</b></td>
            <td><b>Ulica</b></td>
            <td><b>Kod pocztowy</b></td>
        <tr>


            <c:forEach items="${institutions}" var="institution">


        <tr>
            <td>${institution.name}</td>
            <td>${institution.description}</td>
            <td>${institution.city}</td>
            <td>${institution.street}</td>
            <td>${institution.postalCode}</td>
        </tr>


        </c:forEach>


    </table>

</div>




</body>
</html>
