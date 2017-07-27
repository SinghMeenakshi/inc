<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>PackageList</title>
<%@ include file="navigation.jsp"%>
<script>
		$(document).ready(function()
		{
			var searchCondition='${searchCondition}';
			$('.table').DataTable({
				"lengthMenu" : [ [3,5,7,-1], [3,5,7,"ALL"] ],
			"oSearch":
					{
					"sSearch":searchCondition
					}
			})
			
		});
</script>
</head>
<body>
	
	<div class="container">
	<b >LIST OF PRODUCTS</b>
	
		<table class="table table-striped table-hover" >
		<thead>
			<tr>
				<th>IMAGE</th>
				<th>PACKAGE NAME</th>
				<th>PACKAGE DESCRIPTION</th>
				<th>PRICE</th>
				<th>VACANCY</th>
				<th>CATEGORY</th>
				<th>VIEW</th>
				<th>EDIT</th>
				<th>DELETE</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${packs}" var="p">
			<c:url value="images/${p.id }.png" var="imageUrl"></c:url>
			<c:url value="/viewpack${p.id}" var="viewUrl" ></c:url>
			<c:url value="/geteditform/${p.id}" var="editUrl"></c:url>
			<c:url value="/deletepack/${p.id}" var="deleteUrl"></c:url>
			<tr>
					<td><img src="${imageUrl }" height="50" width="50"></td>
					<td><a href="${viewUrl}">${p.packageName }</a><td>${p.description}</td><td>${p.price }</td><td>${p.vacancy }</td><td>${p.category.categoryName }</td>
					<td><a href="${viewUrl}" > <span class="glyphicon glyphicon-info-sign"></span></a></td>
					<td><a href="${editUrl}" > <span class="glyphicon glyphicon-pencil"></span></a></td>
					<td><a href="${deleteUrl}" > <span class="glyphicon glyphicon-trash"></span></a></td>
			</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
	
</body>
</html>
	<%@ include file="footer.jsp"%>