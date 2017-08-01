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
<div class="container" > 

		<div class="row">
			<div class="col-md-12">				
				<div class="panel panel-default  panel--styled">
					<div class="panel-body">
						<div class="col-md-12 panelTop">	
							<div class="col-md-4">	
							 <c:url value="images/${pack.id }.png" var="imageUrl"></c:url>
								<img class="img-responsive" src="${imageUrl }" height="350" width="350" >
							</div>
							<div class="col-md-8">	
								
								<h2 style="text-align:center;">${pack.packageName }</h2>
								<p  style="text-align:center;"> <b>${pack.description }</b></p>
								<table>
								<tr>
										<td><b>VACANCY:</b></td><td><strong>${pack.vacancy }</strong></td>
								</tr>
							</table>
							
							
									<c:if  test="${pack.vacancy==0 }">
										SORRY YOUR LATE !!! TRY AGAIN SOME OTHER TIME ...
									</c:if>
	
									<c:if test="${pack.vacancy!=0 }">
									<c:url value="/booking-addbooking${pack.id }" var="url"></c:url>
									<form action="${url }">
							
							<b>NO. PEOPLE TRAVELLING:</b><input type="text" name="persons"><br>
	
	
							</form>
								</c:if>
							</div>
					
						<div class="col-md-12 panelBottom">
							<div class="col-md-4 text-center">
								<h5>Price:<span class="itemPrice"><b class="fa fa-inr">${pack.price }</b></span></h5>						
							</div>
							<div class="col-md-4 text-left">
							<c:if test="${pack.vacancy!=0 }">
								<c:url value="/booking-addbooking${pack.id }" var="url"></c:url>
								<form action="${url }">
								<button type="submit" class="btn btn-warning"><span class="glyphicon glyphicon-plane"></span>ADD BOOKING</button>
							</form>
							</c:if>
							</div>
							<div class="col-md-4">
								<c:url value="getallpacks" var="url1"></c:url>
									<a href="${url1 }" class="btn btn-info">BACK TO PACKAGE LIST</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
   </div>

<%@ include file="footer.jsp"%>
</body>
</html>
