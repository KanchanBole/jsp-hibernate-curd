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
	<form class="form-horizontal" action="registration" method="post">
		<%
			String success = (String) request.getAttribute("success");
			if (success != null) {
		%>
		<div class="alert alert-success">
			<strong>Success!</strong>
			<%=success%>.
		</div>
		<%
			}
		%>

		<%
			String error = (String) request.getAttribute("error");
			if (error != null) {
		%>
		<div class="alert alert-danger">
			<strong>Danger!</strong> error.
		</div>
		<%
			}
		%>
		<fieldset>

			<!-- Form Name -->
			<legend>Registration</legend>

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

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="name">Name</label>
				<div class="col-md-4">
					<input id="name" name="name" type="text" placeholder="Name"
						class="form-control input-md" required="">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="mobile">Mobile</label>
				<div class="col-md-4">
					<input id="mobile" name="mobile" type="text" placeholder="Mobile"
						class="form-control input-md" required="">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="address">Address</label>
				<div class="col-md-4">
					<input id="address" name="address" type="text"
						placeholder="Address" class="form-control input-md" required="">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Email</label>
				<div class="col-md-4">
					<input id="email" name="email" type="text" placeholder="Email"
						class="form-control input-md" required="">

				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for=""></label>
				<div class="col-md-4">
					<button id="" name="" class="btn btn-primary">Create
						Account</button>
				</div>
			</div>

		</fieldset>
		<a href="index.jsp"><span class="glyphicon glyphicon-home"></span>
			HOME </a> | <a href="login.jsp">Login</a>
	</form>
</body>
</html>