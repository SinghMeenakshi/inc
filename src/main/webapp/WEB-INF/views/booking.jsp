<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BOOKING</title>
</head>
<body>
<%@ include file="navigation.jsp"%>

	<div>
	<div>
	<c:url value="/booking-clearbooking${booking.id }" var="clear"></c:url>
	<a href="${clear }" class="btn btn-danger" pull-left>
	<span class="glyphicon glyphicon-plane"></span>
	CLEAR CART
	</a>
	<a href="<c:url value="/booking-order${booking.id }"></c:url>" class="btn btn-success pull-right">
	<span class="glyphicon glyphicon-plane"></span> CHECK OUT 
	</a>
	<table class="table table-striped">
	<thead>
	<tr>
	<th>NAME</th><th>VACANCY</th><th>TOTAL PRICE</th><th>REMOVE</th>
	</tr>
	</thead>
	<c:set var="grandTotal" value="0" ></c:set>
	<c:forEach items="${booking.bookTours }" var="bookTour">
	<tr>
	<td>${bookTour.pack.packageName }</td>
	<td>${bookTour.vacancy }</td>
	<td>${bookTour.totalPrice }</td>
	<c:url value="/booking-removebooktour${bookTour.bookTourId }" var="remove"></c:url>
	<td>
	<a href="${remove }" class="label label-danger" pull-left>
	<c:set var="grandTotal" value="${bookTour.totalPrice + grandTotal }"></c:set>
	<span class="glyphicon glyphicon-remove">REMOVE</span>
	</a>
	</td>
	</tr>
	</c:forEach>
	</table>
	Total Price :${grandTotal }
	</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>