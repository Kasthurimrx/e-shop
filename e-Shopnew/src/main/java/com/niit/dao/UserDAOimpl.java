package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.User;

@Repository
public class UserDAOimpl implements UserDAO{

	@Autowired(required=true)
	SessionFactory sessionFactory;

	public void adduser(User user) 
	{
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(user);
			trans.commit();
			session.flush();
			session.close();
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		
		}
		
		
	}
	public List<User> getList() {
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<User> showuser=session.createQuery("from User").list();
		trans.commit();
		session.close();
		return showuser;
	}
	
	public void deleteuser(String id) {
		
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		User user=(User)session.get(User.class,id);
		session.delete(user);
		trans.commit();
		session.clear();
		
		
	}
	public User getUser(String id) {
		
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		User user=(User)session.get(User.class, id);
		trans.commit();
		session.flush();
		session.close();
		return user;
	}
	
	public void edituser(User user){
		
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.update(user);
		trans.commit();
		session.flush();
		session.close();		
	}

}
