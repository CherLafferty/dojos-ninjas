<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Dojos and Ninja</title>
</head>
<body>
	<h3>Show Dojos</h3>
	<p>${dojo.location}</p>

	<table class="table">
		<tr class="table-info">
			<th>First Name</th>
			<th>Last Name</th>
			<th>Age</th>
		</tr>
		<c:forEach var="ninja" items="${dojo.ninjas}">
		<tr>
			<td><c:out value="${ninja.firstName}" /></td>
			<td><c:out value="${ninja.lastName}" /></td>
			<td><c:out value="${ninja.age}" /></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>