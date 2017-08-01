<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BOOKING DETAILS</title>
</head>
<body>
<%@ include file="navigation.jsp"%>
<div class="container-wrapper">
    <div class="container">
       
            <p class="lead">BOOKING <br> CONFIRMATION</p>
        </div>

        <div class="container">
        <c:url value="/booking-confirm${bookingid }" var="url"></c:url>
			<form:form action="${url }" modelAttribute="order">
            <div class="row">

                             <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                       <div class="txt-center">
                            <h1></h1>
                       </div>
                       ORDER ID: ${order.orderId }

                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <td>TOUR PACKAGE</td>
                                        <td>#</td>
                                        <td class="text-center">Price</td>
                                        <td class="text-center">Total</td>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:set var="grandTotal" value="0.0"></c:set>
                                <c:forEach var="bookTour" items="${order.booking.bookTours}">
                                    <tr>
                                        <td class="col-md-9"><em>${bookTour.pack.packageName}</em></td>
                                        <td class="col-md-1" style="text-align: center">${bookTour.vacancy}</td>
                                        <td class="col-md-1" style="text-align: center">${bookTour.pack.price}</td>
                                        <td class="col-md-1" style="text-align: center">${bookTour.totalPrice}</td>
                                        <c:set var="grandTotal" value="${grandTotal + bookTour.totalPrice }"></c:set>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Grand Total:</strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>$ ${grandTotal}</strong></h4>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                            <input type="submit" value="submit">
                        </div>


                      
                    </div>
             
            </div>
            
            </form:form>
        </div>

</body>
</html>
<%@ include file="footer.jsp"%>