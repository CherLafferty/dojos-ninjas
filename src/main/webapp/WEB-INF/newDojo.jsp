<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Dojos and Ninjas</title>
</head>
<body>
	<h3>New Dojo</h3>
	<div class="container">
		<form:form class="form" action="/dojos/new" method="post" modelAttribute="dojo">
			<div class="form-group row>">
				<form:errors path="location" class="errors"></form:errors>
				<form:label path="location">Name:</form:label>
				<form:input path="location" type="text"/>
			</div>
			<input type="submit" class="btn btn-primary" value="Create"/>		
		</form:form>
	</div>
</body>
</html>