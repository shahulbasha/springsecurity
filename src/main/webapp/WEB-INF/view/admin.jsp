<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sample Spring Security</title>
</head>
<body>
<h2>Hey Mate this is an Admin only Page!! Welcome</h2>

<br>
<h1>Welcome</h1><security:authentication property="principal.username"/>
<br>
<h1>Role : </h1><security:authentication property="principal.authorities"/>

        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
        	<input type="submit" value="Logout" />
        </form:form>

<a href="${pageContext.request.contextPath}/employees">Home</a>
</body>
</html>