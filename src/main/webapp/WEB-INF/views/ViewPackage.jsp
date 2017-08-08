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
<B style="text-align:center;" >DETAILS </B>
<table>
   <tr>
   <c:url value="images/${pack.id }.png" var="imageUrl"></c:url>
   <td><img src="${imageUrl }" height="300" width="350"></td>
   </tr>
   <br>
	<tr>
	
			<td><b>NAME:</b></td><td>${pack.packageName }</td></tr>
	<tr>
			<td><b>Price:</b></td><td><span class="fa fa-inr">${pack.price }</span></td>
	</tr>
	<tr>
			<td><b>Description:</b></td> <td> ${pack.description }</td>
	</tr>
	<tr>
		<td><b>Vacancy:</b></td><td>${pack.vacancy }</td>
	</tr>
</table>
<div class="container">
<c:if  test="${pack.vacancy==0 }">
<div >
<style=text-align:"right;"> <b><i><strong>sorry you are late..come back soon !!!</strong></i></b></style>
 </div>
</c:if>
 
 <br>
<c:if test="${pack.vacancy!=0 }">
<c:url value="/booking-addbooking${pack.id }" var="url"></c:url>
<form action="${url }">
<br>
ENTER NO. OF PEOPLE(atleast one should be there): <input type="text" name="persons">
<br><br><br>
<div class="row">
<div class="col-xs-6">
<security:authorize access="hasRole('ROLE_USER')">
<button type="submit" class="btn btn-warning">ADD BOOKING</button>
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
</div>
<br>
<%@ include file="footer.jsp"%>
</body>
</html>


