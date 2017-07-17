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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<title>NAVBAR</title>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">INCREDIBLE INDIA TOUR</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">HOME</a></li>
          <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">DESTINATIONS<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">DELHI</a></li>
            <li><a href="#">GOA</a></li>
            <li><a href="#">HIMACHAL</a></li>
            <li><a href="#">PUNJAB</a></li>
            <li><a href="#">MUMBAI</a></li>
          </ul>
        </li>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">IDEAS<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">TREKKING</a></li>
            <li><a href="#">RIVER RAFTING</a></li>
            <li><a href="#">SAFARI</a></li>
            <li><a href="#">HOLY VISIT</a></li>
            <li><a href="#">MOUNTAINEERING</a></li>
            <li><a href="#">JEEP SAFARI</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">PACKAGES<span class="caret"></span></a>
          <ul class="dropdown-menu">
          				<li><a href="#" > PACKAGES BY STATES</a></li>
						<li><a href="#">PACKAGES BT INTEREST</a></li>
						<li><a href="#">FIXED DEPATURE TOUR</a></li>
						<li><a href="#">LUXURY PACKAGE</a></li>
            
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">STAY<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">CITY WISE</a></li>
            <li><a href="#">LUXURY WISE</a></li>
            <li><a href="#">RESORTS</a></li>
          </ul>
        </li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">PACKAGE CHANGES<span class="caret"></span></a>
          <ul class="dropdown-menu">
          				<li><a href="getpackform">ADD PACKAGE</a></li>
						<li><a href="all/pack/getallpacks">VIEW ALL PACKAGES LIST</a></li>
          </ul>
        </li>
        <li><a href="aboutus">ABOUT US</a></li>
        <li><a href="contactus">CONTACT US</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
	
</body>
</html>