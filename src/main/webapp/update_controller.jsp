<%@page import="java.util.List"%>
<%@page import="com.app.service.EmployeeServiceImpl"%>
<%@page import="com.app.service.EmployeeService"%>
<%@page import="com.app.model.Employee"%>
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
		Employee employee = new Employee();
		employee.setId(Integer.parseInt(request.getParameter("id")));
		employee.setName(request.getParameter("name"));
		employee.setMobile(request.getParameter("mobile"));
		employee.setAddress(request.getParameter("address"));
		employee.setEmail(request.getParameter("email"));

		EmployeeService service = new EmployeeServiceImpl();
		boolean result = service.update(employee);
		if (result) {

			List<Employee> elistList = service.getEmployees();
			request.setAttribute("employees", elistList);
			request.setAttribute("success", "Employee Update Successfully.");
		} else {
			request.setAttribute("error", "Employee is Not Updated!!!");

		}
		request.getRequestDispatcher("employees.jsp").forward(request, response);
	%>
</body>
</html>