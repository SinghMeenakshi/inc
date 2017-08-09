<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<%@ include file="navigation.jsp"%>
<script type="text/javascript">
	function Validate() {
		var password = document.getElementById("txtPassword").value;
		var confirmPassword = document.getElementById("txtConfirmPassword").value;
		if (password != confirmPassword) {
			alert("Passwords do not match.");
			return false;
		}
		return true;
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

							 <label>Password</label> <br> <input type="password"
							id="txtPassword" class="form-control" />
						<form:errors path="user.password" cssStyle="color:red" 
pattern="(?=.*\d)(?+.*[a-z])(?=.*[A-Z]).{8,}" title="must contain at least one number and one uppercase and lowercase letter and atleast 8 or more characters"

						></form:errors>
						<br>

						<form:label path="user.password">Confirm Password</form:label>
						<br>
						<form:input type="password" id="txtConfirmPassword"
							path="user.password" class="form-control" />
							
							<br>
							<input type="submit" value="Sign-Up" onclick="return Validate()"
						class="btn btn-warning">
						</div>
					</div>
			</div>
		</div>
	</div>


	</form:form>
</body>
</html>