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
	<B >DETAILS ABOUT THE PAKAGES</B>
<table>
   <tr>
   <c:url value="images/${pack.id }.png" var="imageUrl"></c:url>
   <td><img src="${imageUrl }" height="50" width="50"></td>
   </tr>
	<tr>
			<td>PACKAGE NAME:</td><td>${pack.packageName }</td>
	</tr>
	<tr>
			<td>Price:</td><td>${pack.price }</td>
	</tr>
	<tr>
			<td>Description:</td> <td> ${pack.description }</td>
	</tr>
	<tr>
		<td>Vacancy:</td><td>${product.vacancy }</td>
	</tr>
</table>

<c:if  test="${product.vacancy==0 }">
sorry you are late
</c:if>
	
<c:if test="${product.quantity!=0 }">
<c:url value="/booking-addbooking${pack.id }" var="url"></c:url>
<form action="${url }">
	ENTER NO. OF PEOPLE <input type="text" name="persons"><br>
	
	<button type="submit" 
 style="background:none;border:none;padding:0" class="btn btn-default btn-lg">
<span class="glyphicon glyphicon-plane"></span></button>
</form>
</c:if>

<c:url value="getallpacks" var="url1"></c:url>
<a href="${url1 }" class="btn btn-info">BACK TO PACKAGE LIST</a>

<%@ include file="footer.jsp"%>
</body>
</html>
