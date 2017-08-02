<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW PACKAGE LIST</title>
</head>
<body >
<%@ include file="navigation.jsp"%>
<div class="container" > 
<B >DETAILS ABOUT THE PAKAGES</B>
<table>
   <tr>
   <c:url value="images/${pack.id }.png" var="imageUrl"></c:url>
   <td><img src="${imageUrl }" height="100" width="100"></td>
   </tr>
	<tr>
			<td>PACKAGE NAME:</td><td>${pack.packageName }</td></tr>
	<tr><p>
			<td>Price:</td><td>${pack.price }</td>
	</tr>
	<tr>
			<td>Description:</td> <td> ${pack.description }</td>
	</tr>
	<tr>
		<td>Vacancy:</td><td>${pack.vacancy }</td>
	</tr>
</table>
<div class="container">
<c:if  test="${pack.vacancy==0 }">
sorry you are late
</c:if>
	
<c:if test="${pack.vacancy!=0 }">
<c:url value="/booking-addbooking${pack.id }" var="url"></c:url>
<form action="${url }">
ENTER NO. OF PEOPLE <input type="text" name="persons"><br>

<div class="row">
<div class="col-xs-6">
<security:authorize access="hasRole('ROLE_USER')">
<button type="submit" class="btn btn-warning">add booking</button>
</security:authorize>
</div>
</form>
</c:if>
<div class="col-xs-6">
<c:url value="getallpacks" var="url1"></c:url>
<a href="${url1 }" class="btn btn-info" class="pull-right">BACK TO PACKAGE LIST</a>
</div>
</div>
</div>
<div class="footer navbar-fixed-bottom">
<%@ include file="footer.jsp"%>
</div>
</body>
</html>

