<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<link href="page.css" rel="stylesheet" type="text/css">
<title>REGISTERATION FORM</title>
</head>
<body>

 <div id="fullscreen_bg" class="fullscreen_bg1">
<div class="container" >
    <h1 class="well">REGISTER HERE</h1>
	<div class="col-lg-12 well">
	<div class="row">
				<form >
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label>
								<input type="text" placeholder="Enter First Name Here.." class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<input type="text" placeholder="Enter Last Name Here.." class="form-control">
							</div>
						</div>					
						<div class="form-group">
							<label>Address</label>
							<textarea placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>
						</div>	
												
					<div class="form-group">
						<label>Phone Number</label>
						<input type="text" placeholder="Enter Phone Number Here.." class="form-control">
					</div>		
					<div class="form-group">
						<label>Email Address</label>
						<input type="text" placeholder="Enter Email Address Here.." class="form-control">
					</div>	
					<div class="form-group">
						<label>Password</label>
						<input type="password" place holder="password" id="password" maxlength="9" class="form-control">
					</div>
					<div class="form-group">
						<label>Confirm Password</label>
						<input type="password" place holder="password" id="password" maxlength="9" class="form-control">
					</div>	
					<div class="form-group">
						<label>WHAT YOU LIKED ABOUT THIS SITE</label>
						<textarea placeholder="WAITING.." rows="3" class="form-control"></textarea>
					</div>
					<button type="button" class="btn btn-lg btn-info">SUBMIT</button>
					<button type="button" class="btn btn-lg btn-danger pull-right">CANCEL</button>						
					</div>
				</form> 
				</div>
	</div>
	</div>
</div>
</body>
</html>