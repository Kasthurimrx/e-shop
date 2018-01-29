package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO{
	

	@Autowired(required=true)
	SessionFactory sessionFactory;

	public void addProduct(Product product) {
		try
		{
			
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.save(product);
		trans.commit();
		session.flush();
		session.close();
		}
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
	}
	
	public List<Product> getProductList(){
		Session sec=sessionFactory.openSession();
		Transaction trans=sec.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Product> prolist = sec.createQuery("from Product").list();
		trans.commit();
		sec.flush();
		sec.close();
		return prolist ;
    }
	
	public void deleteProduct(int productid)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		Product product = (Product)session.get(Product.class,productid);
		session.delete(product);
		trans.commit();
		session.clear();
	}
	
	public Product getProduct(int productid)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		Product product=(Product)session.get(Product.class,productid);
		trans.commit();
		session.flush();
		session.close();
		return product;
		
	}
	
	public void editProduct(Product product)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.update(product);
		trans.commit();
		session.flush();
		session.close();
		
	}


}
