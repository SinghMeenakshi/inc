<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style/page.css" rel="stylesheet" type="text/css">

<title>CONTACT US</title>
</head>
<%@ include file="navigation.jsp"%>
<body id="con" style="background-color:#E8E8E8">

	
	<div class="container" >

		<div class="col-sm-6" style="text-align:left;">
			<h3>INCREDIBLE INDIA TOUR</h3>
			<p>
				You can contact us to on our watsapp no. or visit us on <a href="home">incredibleindiatour
					</a>website.
					<br>
				<h5>OUR BRANCHES IN EVERY STATE VISIT YOUR NEAR BY BRANCH OR CALL US ON +911234567890.. FOR ANY QUERY MESSEAGE US ..</h5>
			</p>
<br>
			<div class="col-md-12">
			<form>
				<fieldset>
					<div class="form-group">
						<label class="col-md-3 control-label" for="name">Name</label>
						<div class="col-md-9">
							<input id="name" name="name" type="text" placeholder="Your name"
								class="form-control">
						</div>
					</div>

<br><br>
					<div class="form-group">
						<label class="col-md-3 control-label" for="email">Your
							E-mail</label>
						<div class="col-md-9">
							<input id="email" name="email" type="text"
								placeholder="Your email" class="form-control">
						</div>
					</div>
<br><br>

					<div class="form-group">
						<label class="col-md-3 control-label" for="message">Your
							message</label>
						<div class="col-md-9">
							<textarea class="form-control" id="message" name="message"
								placeholder="Please enter your message here..." rows="3"></textarea>
						</div>
					</div>

<br><br><br>
					<div class="form-group">
						<div class="col-md-12 text-right">
							<button type="submit" class="btn btn-primary btn-lg">Submit</button>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
</div>
		<div class="col-sm-6">
			<h4>
				<span class="glyphicon glyphicon-map-marker"></span>OUR LOCATION
			</h4>

			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7005.000508372712!2d77.19257212383076!3d28.61476542969879!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce2a99ba1e313%3A0x7ed0da6bc307aa30!2sRashtrapati+Bhawan%2C+President&#39;s+Estate%2C+New+Delhi%2C+Delhi!5e0!3m2!1sen!2sin!4v1499618958392"
				width="500" height="500" frameborder="0" style="border: 0"
				allowfullscreen></iframe>
		</div>
	</div>



</body>
</html>
<%@ include file="footer.jsp"%>