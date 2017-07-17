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
	<div class="container" style="margin-top:200px;">
	<b >LIST OF PRODUCTS</b>
	
		<table class="table table-striped" >
		<thead>
			<tr>
				<th>PACKAGE NAME</th>
				<th>PACKAGE DESCRIPTION</th>
				<th> PRICE </th>
				<th>ACTION</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${packs}" var="p">
			<c:url value="/all/pack/viewpack/${p.id}" var="viewUrl" ></c:url>
			<c:url value="/admin/pack/geteditform/${p.id}" var="editUrl"></c:url>
			<c:url value="/admin/pack/deletepack/${p.id}" var="deleteUrl"></c:url>
			<tr>
					<td><a href="${viewUrl}">${p.packageName }</a><td>${p.description}</td><td>${p.price }</td>
					<td>
					<a href="${ViewUrl}" > <span class="glyphicon glyphicon-info-sign"></span></a>
					<a href="${editUrl}" > <span class="glyphicon glyphicon-pencil"></span></a>
					<a href="${deleteUrl}" > <span class="glyphicon glyphicon-trash"></span></a>
					</td>
			</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
	
</body>
</html>
	<%@ include file="footer.jsp"%>