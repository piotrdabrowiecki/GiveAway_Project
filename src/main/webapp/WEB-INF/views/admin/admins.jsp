<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Edit admins</title>
</head>
<body>


<h2>Admin List</h2>
<br>
<br>
<div class="container">
    <table border="4" bgcolor="#E0FFFF" class="table">



        <tr class="dark">
            <td><b>Id</b></td>
            <td><b>Login</b></td>
            <td><b>Password</b></td>
            <td><b>Email</b></td>

            <td><b>edit Admin</b></td>
            <td><b>delete Admin</b></td>
        </tr>


        <c:forEach items="${users}" var="user">


        <tr>
            <c:if test="${user.login.startsWith('admin')}"><td>${user.id}</td></c:if>
            <c:if test="${user.login.startsWith('admin')}"> <td>${user.login}</td></c:if>
            <c:if test="${user.login.startsWith('admin')}"><td>${user.password}</td></c:if>
            <c:if test="${user.login.startsWith('admin')}"><td>${user.email}</td></c:if>

            <c:if test="${user.login.startsWith('admin')}"><td><a href="/user/editUser?id=${user.id}">edit Admin</a></td></c:if>
            <c:if test="${user.login.startsWith('admin')}"><td><a href="/admin/deleteAdmin?id=${user.id}">delete Admin</a></td></c:if></td>
        </tr>

        </c:forEach>




</body>
</html>
