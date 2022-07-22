package com.app.service;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.hibernate.jpa.criteria.compile.CriteriaCompiler;

import com.app.model.Employee;
import com.app.model.User;
import com.app.utility.HibernateUtility;

public class EmployeeServiceImpl implements EmployeeService {

	@Override
	public boolean registration(Employee employee) {

		Session session = HibernateUtility.setUp().openSession();
		Transaction tx = session.beginTransaction();
		session.persist(employee);
		tx.commit();

		return tx.wasCommitted();
	}

	@Override
	public boolean update(Employee emp) {
		Session session = HibernateUtility.setUp().openSession();
		Transaction tx = session.beginTransaction();
		Employee employee = (Employee) session.get(Employee.class, emp.getId());
		employee.setName(emp.getName());
		employee.setMobile(emp.getMobile());
		employee.setAddress(emp.getAddress());
		employee.setEmail(emp.getEmail());

		session.update(employee);
		tx.commit();
		return tx.wasCommitted();
	}

	@Override
	public User signin(User user) {
		Session session = HibernateUtility.setUp().openSession();

		Criteria cr = session.createCriteria(User.class);
		cr.add(Restrictions.eq("username", user.getUsername()));
		cr.add(Restrictions.eqOrIsNull("password", user.getPassword()));

		User user2 = (User) cr.uniqueResult();

		return user2;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> getEmployees() {

		Session session = HibernateUtility.setUp().openSession();

		return session.createCriteria(Employee.class).list();

	}

	@Override
	public Boolean deleteEmployee(int id) {
		Session session = HibernateUtility.setUp().openSession();
		Transaction tx = session.beginTransaction();
		session.delete(session.get(Employee.class, id));
		tx.commit();
		return tx.wasCommitted();
	}

	@Override
	public Employee getEmployees(int id) {
		Session session = HibernateUtility.setUp().openSession();
		return (Employee) session.get(Employee.class, id);
	}

}
