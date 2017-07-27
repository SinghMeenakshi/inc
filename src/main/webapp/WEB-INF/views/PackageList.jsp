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
				"lengthMenu" : [ [3,5,7,10], [3,5,7,10] ],
			"oSearch":
					{
					"sSearch":searchCondition
					}
			})
			
		});
</script>
</head>
<body>
	
	<div class="container-fluid">
	<b >LIST OF PRODUCTS</b>
	
		<table class="table table-striped table-hover" style="font-size:20px;">
		<thead>
			<tr style="color:green;">
				<th>IMAGE</th>
				<th>PACKAGE NAME</th>
				<th>PRICE</th>
				<th>CATEGORY</th>
				<th>VIEW</th>
				<th>EDIT</th>
				<th>DELETE</th>
				
			</tr>
		</thead>
		<tbody  style="color:purple;" >
			<c:forEach items="${packs}" var="p">
			<c:url value="images/${p.id }.png" var="imageUrl"></c:url>
			<c:url value="/viewpack${p.id}" var="viewUrl" ></c:url>
			<c:url value="/geteditform/${p.id}" var="editUrl"></c:url>
			<c:url value="/deletepack/${p.id}" var="deleteUrl"></c:url>
			<tr>
					<td><img src="${imageUrl }" height="150" width="200"></td>
					<td><a href="${viewUrl}">${p.packageName }</a><td><b class="fa fa-inr">${p.price }</b></td><td>${p.category.categoryName }</td>
					<td><a href="${viewUrl}" > <span class="glyphicon glyphicon-info-sign" style="color:blue;"></span></a></td>
					<td><a href="${editUrl}" > <span class="glyphicon glyphicon-pencil" style="color:brown;"></span></a></td>
					<td><a href="${deleteUrl}" > <span class="glyphicon glyphicon-trash" style="color:red;"></span></a></td>
			</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
	
</body>
</html>
	<%@ include file="footer.jsp"%>