<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: slawek
  Date: 05.02.19
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Institution Details</title>
</head>
<body>



<form:form modelAttribute = "institution" method = "post" >

    <%--<form:errors path = "*" /> --%>


    <td><b>Name</b></td>
    <form:input path = "name" />
    <form:errors path ="name" />
    <br>

    <td><b>Description</b></td>
    <form:input path = "description" />
    <form:errors path ="description" />
    <br>

    <td><b>City</b></td>
    <form:input path = "city" />
    <form:errors path ="city" />
    <br>

    <td><b>Street</b></td>
    <form:input path = "street" />
    <form:errors path ="street" />
    <br>

    <td><b>Postal Code</b></td>
    <form:input path = "postalCode" />
    <form:errors path ="postalCode" />
    <br>


    <input type = "submit" value="Add Institution" />




</form:form>








</body>
</html>
