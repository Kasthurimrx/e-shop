package com.niit.dao;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired (required=true)
	SessionFactory sessionFactory;
	
	public void addcategory(Category category) {

		try{
			
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(category);
			trans.commit();
			session.flush();
			session.close();
		}
		
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
	}

	
	public List<Category> getCategoryList() {
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Category> catlist = session.createQuery("from Category").list();
		trans.commit();
		session.flush();
		session.close();
		return catlist;
	}

	public void deletecategory(String id)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		Category category=(Category)session.get(Category.class,id);
		session.delete(category);
		trans.commit();
		session.clear();
	}

	
	public Category getCategory(String id)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		Category category=(Category)session.get(Category.class,id);
		trans.commit();
		session.flush();
		session.close();
		return category;
		
	}
	
	public void editcategory(Category category)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.update(category);
		trans.commit();
		session.flush();
		session.close();
		
	}
	

}
