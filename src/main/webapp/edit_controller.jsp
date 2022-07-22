<%@page import="com.app.model.Employee"%>
<%@page import="com.app.service.EmployeeServiceImpl"%>
<%@page import="com.app.service.EmployeeService"%>
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
		int id = Integer.parseInt(request.getParameter("id"));

		EmployeeService service = new EmployeeServiceImpl();
		Employee employee = service.getEmployees(id);
		request.setAttribute("employee", employee);
		request.getRequestDispatcher("modify_controller.jsp").forward(request, response);
	%>
</body>
</html>