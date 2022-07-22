package com.app.utility;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;

import com.app.model.Employee;
import com.app.model.User;

public class HibernateUtility {

	public static SessionFactory setUp() {

		Configuration configuration = new Configuration();

		Properties properties = new Properties();
		properties.setProperty(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
		properties.setProperty(Environment.URL, "jdbc:mysql://localhost:3306/java_seven_batch");
		properties.setProperty(Environment.USER, "root");
		properties.setProperty(Environment.PASS, "root");
		properties.setProperty(Environment.DIALECT, "org.hibernate.dialect.MySQLDialect");

		properties.setProperty(Environment.SHOW_SQL, "true");
		properties.setProperty(Environment.FORMAT_SQL, "true");

		configuration.setProperties(properties);

		configuration.addAnnotatedClass(Employee.class);
		configuration.addAnnotatedClass(User.class);

		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder();
		builder.applySettings(configuration.getProperties());

		return configuration.buildSessionFactory(builder.build());
	}

}
