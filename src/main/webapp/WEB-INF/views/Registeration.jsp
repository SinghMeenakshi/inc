<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<%@ include file="navigation.jsp"%>
<script type="text/javascript">
function checkPass()
{
    var pass1 = document.getElementById('pass1');
    var pass2 = document.getElementById('pass2');
   
    var message = document.getElementById('confirmMessage');
  
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
   
    if(pass1.value == pass2.value){
       
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match!"
    }else{
       
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!"
    }
} 
</script>
</head>
<body style="background-color:#E8E8E8">
	
	<div id="fullscreen_bg" class="fullscreen_bg1">
		<div class="container">
			<h1 class="well">REGISTER HERE</h1>
			<div class="col-lg-12 well">
				<c:url value="/savetourist" var="url"></c:url>
				<form:form action="${url }" modelAttribute="tourist">
					<div class="col-lg-12 well">
						<div class="row">
							<h2>USER DETAILS</h2>
						</div>

						<div class="col-sm-12">
							<div class="row">
								<div class="col-sm-6 form-group">
									<form:label class="control-label" path="firstname">FIRSTNAME</form:label>
									<form:input path="firstname" class="form-control"
										placeholder="firstname"></form:input>
									<form:errors path="firstname" style="color:red;"></form:errors>
								</div>

								<div class="col-sm-6 form-group">
									<form:label class="control-label" path="lastname">LASTNAME</form:label>
									<form:input path="lastname" class="form-control"
										placeholder="lastname"></form:input>
									<form:errors path="lastname" style="color:red;"></form:errors>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<form:label class="control-label" path="email">EMAIL</form:label>
									<form:input path="email" class="form-control"
										placeholder="email"></form:input>
									<form:errors path="email" style="color:red;"></form:errors>
									<p style="color: red">${duplicateEmail }</p>
								</div>

								<div class="col-sm-6 form-group">
									<form:label class="control-label" path="phone">PHONE NUMBER</form:label>
									<form:input path="phone" class="form-control"
										placeholder="phone"></form:input>
									<form:errors path="phone" style="color:red;"></form:errors>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-4 form-group">
									<form:label class="control-label" path="streetname">STREETNAME</form:label>
									<form:input path="streetname" class="form-control"
										placeholder="streetname"></form:input>
									<form:errors path="streetname" style="color:red;"></form:errors>
								</div>

								<div class="col-sm-4 form-group">
									<form:label class="control-label" path="villano">VILLA NUMBER</form:label>
									<form:input path="villano" class="form-control"
										placeholder="villano"></form:input>
									<form:errors path="villano" style="color:red;"></form:errors>
								</div>

								<div class="col-sm-4 form-group">
									<form:label class="control-label" path="city">CITY</form:label>
									<form:input path="city" class="form-control" placeholder="city"></form:input>
									<form:errors path="city" style="color:red;"></form:errors>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-4 form-group">
									<form:label class="control-label" path="state">STATE</form:label>
									<form:input path="state" class="form-control"
										placeholder="state"></form:input>
									<form:errors path="" style="color:red;"></form:errors>
								</div>

								<div class="col-sm-4 form-group">
									<form:label class="control-label" path="country">COUNTRY</form:label>
									<form:input path="country" class="form-control"
										placeholder="country"></form:input>
									<form:errors path="country" style="color:red;"></form:errors>
								</div>

								<div class="col-sm-4 form-group">
									<form:label class="control-label" path="zipcode">ZIPCODE</form:label>
									<form:input path="zipcode" class="form-control"
										placeholder="zipcode"></form:input>
									<form:errors path="zipcode" style="color:red;"></form:errors>
								</div>
							</div>

							<div class="form-group">
								<form:label class="control-label" path="user.username">USERNAME</form:label>
								<form:input path="user.username" class="form-control"
									placeholder="enter username"></form:input>
								<form:errors path="user.username" style="color:red;"></form:errors>
								<p style="color: red">${duplicateUsername }</p>
							</div>

							<div class="form-group">
								<form:label class="control-label" path="user.password" for="pass1">PASSWORD</form:label>
								<form:input type="password" path="user.password"
									class="form-control" placeholder="password" name="pass1" id="pass1" ></form:input>
								<form:errors path="user.password" style="color:red;"></form:errors>
							</div>
							
							<div class="form-group">
								<form:label class="control-label" path="user.password" for="pass2">COMFIRM PASSWORD</form:label>
								<form:input type="password" path="user.password"
									class="form-control" placeholder="confirm password"  name="pass2" id="pass2" onkeyup="checkPass(); return false;"></form:input>
								  <span id="confirmMessage" class="confirmMessage"></span>
								<form:errors path="user.password" style="color:red;"></form:errors>
							</div>

							<div class="form-group">
								<button type="submit" class="btn btn-warning">REGISTER</button>
							</div>
						</div>
					</div>
			</div>
		</div>
	</div>


	</form:form>
</body>
</html>