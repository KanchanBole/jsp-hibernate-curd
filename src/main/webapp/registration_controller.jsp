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

		Employee employee = new Employee();
		employee.setName(request.getParameter("name"));
		employee.setMobile(request.getParameter("mobile"));
		employee.setAddress(request.getParameter("address"));
		employee.setEmail(request.getParameter("email"));

		user.setEmployees(Arrays.asList(employee));
		employee.setUser(user);

		EmployeeService service = new EmployeeServiceImpl();
		boolean result = service.registration(employee);

		if (result) {

			request.setAttribute("success", "Employee saved successfully");
		} else {
			request.setAttribute("error", "Employee is not saved!!!!");
		}
		request.getRequestDispatcher("register.jsp").forward(request, response);
	%>
</body>
</html>