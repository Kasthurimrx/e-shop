package com.niit.dbconfig;


import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.model.User;



@Configuration
@EnableTransactionManagement
@ComponentScan("com.niit")
public class DBConfig
{
	@Autowired
	@Bean(name="dataSource")
	public DataSource getH2DataSource()
	{
		DriverManagerDataSource driverMgrDataSource=new DriverManagerDataSource();
		driverMgrDataSource.setDriverClassName("org.h2.Driver");
		driverMgrDataSource.setUrl("jdbc:h2:tcp://localhost/~/test6");
		driverMgrDataSource.setUsername("sa");
		driverMgrDataSource.setPassword("");
		return driverMgrDataSource;
	}
	 
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory()
	{
		Properties hibernateProperties=new Properties();
		hibernateProperties.setProperty("hibernate.hbm2ddl.auto","update");
		hibernateProperties.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		hibernateProperties.put("hibernate.show_sql","true");
		hibernateProperties.put("hibernate.format_sql","true");
		LocalSessionFactoryBuilder localSessionFacBuilder=new LocalSessionFactoryBuilder(getH2DataSource());
		localSessionFacBuilder.addProperties(hibernateProperties);
		localSessionFacBuilder.addAnnotatedClass(User.class);
		localSessionFacBuilder.addAnnotatedClass(Category.class);
		localSessionFacBuilder.addAnnotatedClass(Supplier.class);
		localSessionFacBuilder.addAnnotatedClass(Product.class);
		localSessionFacBuilder.addAnnotatedClass(Cart.class);

		
		SessionFactory sessionFactory=localSessionFacBuilder.buildSessionFactory();
		System.out.println("Session Factory Object Created");
		return sessionFactory;
	}
	 
	@Bean
	public HibernateTransactionManager getHibernateTransactionManager(SessionFactory sessionFactory)
	{
		HibernateTransactionManager hibernateTranMgr=new HibernateTransactionManager(sessionFactory);
		return hibernateTranMgr;
	}
	
}