<%@page import="com.app.model.Employee"%>
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
	<form class="form-horizontal" action="updateEmployee" method="post">
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
			<%
				Employee employee = (Employee) request.getAttribute("employee");
			%>
			<!-- Form Name -->
			<legend>Employee</legend>

			<input type="hidden" name="id" value="<%=employee.getId()%>">

			<!-- Text input-->
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="name">Name</label>
				<div class="col-md-4">
					<input id="name" name="name" type="text" placeholder="Name"
						class="form-control input-md" value="<%=employee.getName()%>">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="mobile">Mobile</label>
				<div class="col-md-4">
					<input id="mobile" name="mobile" type="text" placeholder="Mobile"
						class="form-control input-md" value="<%=employee.getMobile()%>">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="address">Address</label>
				<div class="col-md-4">
					<input id="address" name="address" type="text"
						placeholder="Address" class="form-control input-md"
						value="<%=employee.getAddress()%>">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="email">Email</label>
				<div class="col-md-4">
					<input id="email" name="email" type="text" placeholder="Email"
						class="form-control input-md" value="<%=employee.getEmail()%>">

				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for=""></label>
				<div class="col-md-4">
					<button id="" name="" class="btn btn-primary">Modify
						Account</button>
				</div>
			</div>

		</fieldset>
	</form>
</body>
</html>