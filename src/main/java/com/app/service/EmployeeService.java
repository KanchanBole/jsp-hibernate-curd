package com.app.service;

import java.util.List;

import com.app.model.Employee;
import com.app.model.User;

import javassist.bytecode.annotation.BooleanMemberValue;

public interface EmployeeService {

	public boolean registration(Employee employee);

	public boolean update(Employee employee);

	public User signin(User user);

	public List<Employee> getEmployees();

	public Boolean deleteEmployee(int id);

	public Employee getEmployees(int id);

}
