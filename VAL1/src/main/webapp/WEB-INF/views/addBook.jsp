<%--
  Created by IntelliJ IDEA.
  User: Adonai
  Date: 6/13/2017
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add a Book</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body class="container">
<form:form commandName="book" class="form-horizontal" action="addBooks" method="post">
    <form:errors path="*" cssStyle="color: red" element="div" />
    <table>
        <tr>
            <td>Title:</td>
            <td><input type="text" class="form-control" name="title" value="${book.title}"/></td>
        </tr>
        <tr>
            <td>ISBN:</td>
            <td><input type="text" class="form-control" name="ISBN" value="${book.ISBN}"/></td>
        </tr>
        <tr>
            <td>Author:</td>
            <td><input type="text" class="form-control" name="author" value="${book.author}"/></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="text" class="form-control" name="price" value="${book.price}"/></td>
        </tr>
    </table>
    <input type="submit" class="btn btn-primary" />

</form:form>
</body>
</html>
