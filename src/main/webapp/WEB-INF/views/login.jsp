<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--  
<meta charset="utf-8">
-->

<link href="<c:url value="/recources/css/home.css" />" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://localhost:8080/spring/recources/js/placeholder.js"></script>
	<title>Home</title>
	
</head>
<body>
<form:form method="POST" commandName="user" action="check-user" class="box login">

		<fieldset class="boxBody">

			<form:label path="name">Name:</form:label>
			<form:input path="name" />

			<form:label path="password">Password:</form:label>
			<form:password path="password"/>

		</fieldset>

		<footer> <form:checkbox path="admin" /> 
		
			<form:label path="admin">Admin</form:label> <input type="submit" class="btnLogin" value="login" >
		
		</footer>

	</form:form>
	
</body>
</html>
