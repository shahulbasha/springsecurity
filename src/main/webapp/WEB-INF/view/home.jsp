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
<h2>Spring Security Demo using Maven</h2>

<br>
<h1>Welcome</h1><security:authentication property="principal.username"/>
<br>
<h1>Role : </h1><security:authentication property="principal.authorities"/>

        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
        	<input type="submit" value="Logout" />
        </form:form>


<security:authorize  access="hasRole('MANAGER')">
<a href="${pageContext.request.contextPath}/leaders">Manager</a>
</security:authorize>

<br>
<div></div>
<security:authorize  access="hasRole('ADMIN')">
<a href="${pageContext.request.contextPath}/admin">Admin</a>
</security:authorize>

</body>
</html>