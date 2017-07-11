<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PACKAGE FORM</title>
</head>
<body>
			
			<form:form action="savepack" method="post" modelAttribute="pack">
										   <form hidden path="id"/>
					ENTER THE PAKAGE NAME:  <form:input path="packName"/><br>
					ENTER THE PRICE:		<form:input path="price"/><br>
					ENTER THE QUANTITY:		<form:input path="quantity"/><br>
					ENTER THE DESCRIPTION:	<form:textarea path="description"/><br>
					
			</form:form>
</body>
</html>