<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EDIT FORM</title>
</head>
<body>
<%@ include file="navigation.jsp"%>
	<c:url value="/admin/pack/editpack" var="url2"></c:url>
	<form:form action="${url2 }" modelAttribute="pack">
	<form:hidden path="id"/>
	PACKAGE NAME:<form:input path="packageName"/><br>
	PACKAGE DESCRIPTION:<form:input path="description"/><br>
	PRICE:<form:input path="price"/>
	<input type="submit" value="EDIT PACKAGE">
	</form:form>

</body>
</html>
<%@ include file="footer.jsp"%>