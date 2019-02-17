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
    <title>Gifts</title>
</head>
<body>



<h2>Gift List</h2>
<br>
<br>
<div class="container">

    <table border="4" bgcolor="#E0FFFF">



        <tr>
            <td><b>Id</b></td>
            <td><b>Name</b></td>
            <td><b>Description</b></td>
            <td><b>User</b></td>
            <td><b>Institution</b></td>

            <td><b>delete Gift</b></td>
        </tr>


        <c:forEach items="${gifts}" var="gift">


            <tr>
                <td>${gift.id}</td>
                <td>${gift.name}</td>
                <td>${gift.description}</td>
                <td>${gift.user}</td>
                <td>${gift.institution}</td>
                <td><a href="/gift/deleteGift?id=${gift.id}">delete Gift</a></td>
            </tr>


        </c:forEach>




    </table>
</div>












</body>
</html>
