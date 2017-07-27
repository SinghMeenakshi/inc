<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

   <link href="style/page.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 

 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"/>
 <script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
 <script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    
   
   
<title>NAVBAR</title>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">INCREDIBLE INDIA TOUR</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">HOME</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">DESTINATIONS<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="searchbyCategory1">DELHI</a></li>
						<li><a href="searchbyCategory2">GOA</a></li>
						<li><a href="searchbyCategory3">HIMACHAL</a></li>
						<li><a href="searchbyCategory4">PUNJAB</a></li>
						<li><a href="searchbyCategory5">MUMBAI</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">IDEAS<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="searchbyCategory6">TREKKING</a></li>
						<li><a href="searchbyCategory7">RIVER RAFTING</a></li>
						<li><a href="searchbyCategory8">SAFARI</a></li>
						<li><a href="searchbyCategory9">HOLY VISIT</a></li>
						<li><a href="searchbyCategory10">MOUNTAINEERING</a></li>
						<li><a href="searchbyCategory11">JEEP SAFARI</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">STAY<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="searchbyCategory13">CITY WISE</a></li>
						<li><a href="searchbyCategory12">LUXURY WISE</a></li>
						<li><a href="searchbyCategory14">RESORTS</a></li>
						<li><a href="searchbyCategory15">HOTELS</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">PACKAGE CHANGES<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="getpackform">ADD PACKAGE</a></li>
						<li><a href="getallpacks">VIEW ALL PACKAGES LIST</a></li>
					</ul></li>
				<li><a href="aboutus">ABOUT US</a></li>
				<li><a href="contactus">CONTACT US</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="Registeration"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</div>
	</nav>

</body>
</html>