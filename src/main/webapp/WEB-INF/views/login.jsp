<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="page.css" rel="stylesheet" type="text/css">
<title>LOGIN PAGE</title>
</head>
<body>


	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">

				<div class="default">
					<div class="heading">
						<h3 class="title">LOGIN</h3>
					</div>

					<form>
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="E-mail" name="email"
									type="text">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password"
									name="password" type="password" value="">
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