<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Users</title>
</head>
<body>


<h2>User List</h2>
<br>
<br>
<div class="container">

    <table border="4" bgcolor="#E0FFFF">



        <tr>
            <td><b>Id</b></td>
            <td><b>Login</b></td>
            <td><b>Password</b></td>
            <td><b>Email</b></td>
            <td><b>User's gifts</b></td>

            <td><b>edit User</b></td>
            <td><b>delete User</b></td>
        </tr>


        <c:forEach items="${users}" var="user">


            <tr>
                <td>${user.id}</td>
                <td>${user.login}</td>
                <td>${user.password}</td>
                <td>${user.email}</td>
                <td>
                    <ul>
                        <c:forEach items="${user.gifts}" var="gift">

                            <li>name:${gift.name}</li>
                            <li>name:${gift.description}</li>
                            <li>name:${gift.institution}</li>

                        </c:forEach>
                    </ul>
                </td>
                <td><c:if test="${!user.login.startsWith('admin')}"><a href="/user/editUser?id=${user.id}">edit User</a></c:if></td>
                <td><c:if test="${!user.login.startsWith('admin')}"><a href="/user/deleteUser?id=${user.id}">delete User</a></c:if></td>
            </tr>


        </c:forEach>




    </table>
</div>























</body>
</html>
