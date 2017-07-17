<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PACKAGE FORM</title>
</head>
<body>
	<%@ include file="navigation.jsp"%>
	<form:form action="savepack" method="post" modelAttribute="pack" >
	<div class="container" >
		<form hidden path="id" />
					ENTER THE PAKAGE NAME:  <form:input path="packageName" />
		<br>
					ENTER THE PRICE:		<form:input path="price" />
		<br>
					ENTER THE TOURNO:		<form:input path="tourno" />
		<br>
					ENTER THE DESCRIPTION:	<form:textarea path="description" />
		<br>
		<input type="submit" value="add product">

	</form:form>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>