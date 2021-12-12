<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login & Registration</title>
</head>
<body>
	<h1>Login and Register</h1>
	
	<form:form action="/register" method="post" modelAttribute="newUser">
        <div class="form-group">
            <label>First Name:</label>
            <form:input path="firstName" class="form-control" />
            <form:errors path="firstName" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Last Name:</label>
            <form:input path="lastName" class="form-control" />
            <form:errors path="lastName" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Email:</label>
            <form:input path="email" class="form-control" />
            <form:errors path="email" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Password:</label>
            <form:password path="password" class="form-control" />
            <form:errors path="password" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Confirm Password:</label>
            <form:password path="confirmPassword" class="form-control" />
            <form:errors path="confirmPassword" class="text-danger" />
        </div>
        <input type="submit" value="Register" class="btn btn-primary" />
    </form:form>
    <br>
    <form:form action="/login" method="post" modelAttribute="newLogin">
        <div class="form-group">
            <label>Email:</label>
            <form:input path="email" class="form-control" />
            <form:errors path="email" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Password:</label>
            <form:password path="password" class="form-control" />
            <form:errors path="password" class="text-danger" />
        </div>
        <input type="submit" value="Login" class="btn btn-success" />
    </form:form>
</body>
</html>

