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
<title>New Ninja Form</title>
</head>
<body>
	<div class="container">
		<form:form class="form" action="/ninjas/new" method="post" modelAttribute="ninja">
			<div class="form-group row>">
				<form:errors path="firstName" class="errors"></form:errors>
				<form:label path="firstName">First Name:</form:label>
				<form:input path="firstName" type="text" />
			</div>
			<div class="form-group row>">
				<form:errors path="lastName" class="errors"></form:errors>
				<form:label path="lastName">Last Name:</form:label>
				<form:input path="lastName" type="text" />
			</div>
			<div class="form-group row>">
				<form:errors path="age" class="errors"></form:errors>
				<form:label path="age">Age:</form:label>
				<form:input path="age" type="number" />
			</div>
			<div class="form-group row>">
				<form:label path="dojo">Select Dojo:</form:label>
				<form:select path="dojo">
				<c:forEach items="${dojos}" var="dojo">
					<form:option value="${dojo.id}">
						<c:out value="${dojo.location}"/>
					</form:option>
				</c:forEach>
				</form:select>
			</div>
			<input type="submit" class="btn btn-primary" value="Create" />
		</form:form>

	</div>
</body>
</html>