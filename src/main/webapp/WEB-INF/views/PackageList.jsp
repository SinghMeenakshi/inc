<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PackageList</title>
</head>
<body>
	<%@ include file="navigation.jsp"%>
	<b>LIST OF PRODUCTS</b>
	<div class="container">
		<table class="table table-striped">
		<thead>
			<tr>
				<th>PACKAGE NAME</th>
				<th>PACKAGE DESCRIPTION</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${packs}" var="p">
			<tr>
				<td>${p.packName}</td>
				<td>${p.description}</td>
			</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
	
</body>
</html>
	<%@ include file="footer.jsp"%>