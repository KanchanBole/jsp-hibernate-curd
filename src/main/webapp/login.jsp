<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<form class="form-horizontal" action="signin" method="post">
		<%
			String error = (String) request.getAttribute("error");
			if (error != null) {
		%>
		<div class="alert alert-danger">
			<strong>Username & password is not same..</strong>
		</div>
		<%
			}
		%>
		<fieldset>

			<!-- Form Name -->
			<legend>Login</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="username">Username</label>
				<div class="col-md-4">
					<input id="username" name="username" type="text"
						placeholder="username" class="form-control input-md" required="">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="password">Password</label>
				<div class="col-md-4">
					<input id="password" name="password" type="text"
						placeholder="Password" class="form-control input-md" required="">

				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for=""></label>
				<div class="col-md-4">
					<button id="" name="" class="btn btn-primary">Signin</button>
				</div>
			</div>

		</fieldset>
	</form>
	<a href="register.jsp">Create Account </a>
</body>
</html>