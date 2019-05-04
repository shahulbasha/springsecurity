<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<style type="text/css">
i {
color:red;
}
</style>
</head>
<body>
<h2>Sign Up</h2>

<div class="wrapper">
	<form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST">
	
	<c:if test="${param.error!=null}">
	<i>Sorry! Tou enteed an invalid username password..</i>
	</c:if>
	<p>User name <input type="text" name="username">
	</p>
	<p>Password <input type="password" name="password">
	</p>
	<input type="submit" value="Sign up">
	</form:form>
</div>


</body>
</html>