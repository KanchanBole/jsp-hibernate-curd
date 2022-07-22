<%@page import="com.app.model.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-color: powderblue;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
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

	<h2>Employees List</h2>

	<table>
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>MOBILE</th>
			<th>ADDRESS</th>
			<th>EMAIL</th>
			<th>USERNAME</th>
			<th>ACTION</th>
		</tr>

		<%
			List<Employee> eList = (List<Employee>) request.getAttribute("employees");
			for (Employee employee : eList) {
		%>


		<tr>
			<td><%=employee.getId()%></td>
			<td><%=employee.getName()%></td>
			<td><%=employee.getMobile()%></td>
			<td><%=employee.getAddress()%></td>
			<td><%=employee.getEmail()%></td>
			<td><%=employee.getUser().getUsername()%></td>

			<td><a href="edit?id=<%=employee.getId()%>">edit</a> <a
				href="delete?id=<%=employee.getId()%>">delete</a></td>
		</tr>


		<%
			}
		%>
	</table>
	<a href="index.jsp"><span class="glyphicon glyphicon-home"></span>HOME</a>

</body>
</html>