<%@page import="com.app.model.Employee"%>
<%@page import="java.util.List"%>
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
		boolean result = service.deleteEmployee(id);
		if (result) {
			List<Employee> eList = service.getEmployees();
			request.setAttribute("employees", eList);
			request.setAttribute("success", "Employee deleted successfully");
		} else {
			request.setAttribute("error", "Employee is not deleted !!!");
		}
		request.getRequestDispatcher("employees.jsp").forward(request, response);
	%>
</body>
</html>