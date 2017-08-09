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
<body style="background-color:#E8E8E8">
	
	<div class="container-fluid">
	<b >LIST OF PRODUCTS</b>
	
		<table class="table table-striped table-hover" style="font-size:20px;">
		<thead>
			<tr style="color:#380000">
				<th>IMAGE</th>
				<th>PACKAGE NAME</th>
				<th>PRICE</th>
				<th>CATEGORY</th>
				<th>VIEW</th>
				<security:authorize access="hasRole('ROLE_ADMIN')">
				<th>EDIT</th>
				<th>DELETE</th>
				</security:authorize>
				
			</tr>
		</thead>
		<tbody  style="color:#300000;" >
			<c:forEach items="${packs}" var="p">
			<c:url value="images/${p.id }.png" var="imageUrl"></c:url>
			<c:url value="/viewpack${p.id}" var="viewUrl" ></c:url>
			<c:url value="/admin-geteditform${p.id}" var="editUrl"></c:url>
			<c:url value="/admin-deletepack${p.id}" var="deleteUrl"></c:url>
			<tr>
					<td><img src="${imageUrl }" height="100" width="150"></td>
					<td><a href="${viewUrl}">${p.packageName }</a><td><b class="fa fa-inr">${p.price }</b></td><td>${p.category.categoryName }</td>
					<td><a href="${viewUrl}" > <span class="glyphicon glyphicon-info-sign" style="color:#FF0033"></span></a></td>
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<td><a href="${editUrl}" > <span class="glyphicon glyphicon-pencil" style="color:brown;"></span></a></td>
					<td><a href="${deleteUrl}" onclick="return confirm('Are you sure you want to delete this package?');"> <span class="glyphicon glyphicon-trash" style="color:red;"></span></a></td>
					</security:authorize>
			</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
	
</body>
</html>
	<%@ include file="footer.jsp"%>