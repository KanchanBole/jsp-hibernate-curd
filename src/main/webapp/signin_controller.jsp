<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="com.app.service.EmployeeServiceImpl"%>
<%@page import="com.app.service.EmployeeService"%>
<%@page import="com.app.model.Employee"%>
<%@page import="com.app.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		User user = new User();
			user.setUsername(request.getParameter("username"));
			user.setPassword(request.getParameter("password"));

			EmployeeService service = new EmployeeServiceImpl();
			User user2 = service.signin(user);

			if (user2 != null) {
			List<Employee> eList = service.getEmployees();
			request.setAttribute("employees", eList);
			request.getRequestDispatcher("employees.jsp").forward(request, response);

		} else {
			request.setAttribute("error", "Employee is not saved!!!!");

			request.getRequestDispatcher("login.jsp").forward(request, response);

		}
	%>
</body>
</html>