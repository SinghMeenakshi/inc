<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN PAGE</title>
</head>
<%@ include file="navigation.jsp"%>
<body style="margin-top:300px;">


	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">

				<div class="default">
					<div class="heading">
						<h3 class="title">LOGIN</h3>
					</div>
					<c:url value="/j_spring_security_check" var="login"></c:url>	
					<form action="${login }" method="post">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="username" name="j_username"
									type="text">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password"
									name="j_password" type="password" value="">
							</div>
							<div class="checkbox">
								<label> <input name="remember" type="checkbox"
									value="Remember Me"> Remember Me
								</label> <a href="https://support.google.com/?hl=en"
									class="pull-right need-help">Need help? </a>
							</div>
							<input class="btn btn-lg btn-success btn-block" type="submit"
								value="Login">
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>
<%@ include file="footer.jsp"%>