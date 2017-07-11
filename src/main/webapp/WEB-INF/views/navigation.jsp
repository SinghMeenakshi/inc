<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 	<meta name="viewport" content="width=device-width, initial-scale=1">

  	<link href="page.css" rel="stylesheet" type="text/css">
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>NAVBAR</title>
</head>
<body>


<nav class="navbar navbar-fixed-top  navbar navbar-inverse"  role="navigation">
  			<div class="container-fluid">
  			 <div class="navbar-header">
  				
  			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
           <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
  				<a class="navbar-brand" href="/">INCREDIBLE INDIA TOUR</a>
					</div><!-- navbar header closed -->
              <div class="collapse navbar-collapse" >
  					<ul class="nav navbar-nav">
  						<li class="active"><a href="#">HOME</a></li>
  						<li class="dropdown">
  						<a href="#" class="dropdown-toggle" data-toggle="dropdown">DESTINATIONS<span class="caret"></span></a>
  							<ul class="dropdown-menu">
  								<li><a href="#">DELHI</a>
         						<li><a href="#">GOA</a>
         						<li><a href="#">PUNJAB</a>
         						<li><a href="#">MUMBAI</a>
         						<li><a href="#">HARYANA</a>
         						<li><a href="#">ARUNCHAL PRADESH</a>
  							</ul>
  						</li>
  						<li class="dropdown"><a  class="dropdown-toggle" data-toggle="dropdown" href="#">IDEAS<span class="caret"></span></a>
  							<ul class="dropdown-menu">
  									<li><a href="#">TREKKING</a>
         							<li><a href="#">RIVER RAFTING</a>
         							<li><a href="#">SAFARI</a>
         							<li><a href="#">HOLY VISIT</a>
         							<li><a href="#">MOUNTAINEERING</a>
         							<li><a href="#">JEEP SAFARI</a>
  							</ul>
  						</li>
 						<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PACKAGES <span class="caret"></span></a>
       						 <ul class="dropdown-menu">
         						 <li><a href="#">PACKAGES BY STATES</a>
         						<li><a href="#">PACKAGES BT INTEREST</a>
         						<li><a href="#">FIXED DEPATURE TOUR</a>
         						<li><a href="#">LUXURY PACKAGE</a>
      						  </ul>
     					 </li>
  						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">STAY<span class="caret"></span></a>
  						 	<ul class="dropdown-menu">
  						 		<li><a href="#">CITY WISE STAY</a>
         						<li><a href="#">LUXURY STAY</a>
         						<li><a href="#">RESORTS</a>
         				
  						 	</ul>
  						</li>
  						</li><a href="getpackform"></a></li>
  						<li><a href="aboutus">ABOUT US</a></li>
  						<li><a href="contactus">CONTACT</a></li>
  					</ul>
  					 <ul class="nav navbar-nav navbar-right" id="btn1">
                     <li><a href="registeration"><button class="btn btn navbar-btn"><span class="glyphicon glyphicon-user"></span> Sign Up</button></a></li>
                     <li><a href="login"><button class="btn btn-primary navbar-btn"><span class="glyphicon glyphicon-log-in"></span> Login</button></a></li>
                    </ul>
                  
  				</div><!-- navbar container closed -->
  			</div><!-- navbar list closed -->
  		
    </nav><!-- navbar closed -->
</body>
</html>