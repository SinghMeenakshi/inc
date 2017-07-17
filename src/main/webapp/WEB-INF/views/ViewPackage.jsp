<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW PACKAGE LIST</title>
</head>
<body>
<%@ include file="navigation.jsp"%>
	<B style="margin-top:200px;">DETAILS ABOUT THE PAKAGES</B>
<table>
	<tr>
			<td>PACKAGE NAME:</td><td>${pack.packageName }</td>
	</tr>
	<tr>
			<td>Price:</td><td>${pack.price }</td>
	</tr>
	<tr>
			<td>Description:</td> <td> ${pack.description }</td>
	</tr>
</table>	

<c:url value="all/pack/getallpacks" var="url1"></c:url>
</body>
</html>
<%@ include file="footer.jsp"%>