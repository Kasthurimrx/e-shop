package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO{
	@Autowired (required=true)
	SessionFactory sessionFactory;

	public void addsupplier(Supplier supplier) 
	{
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(supplier);
			trans.commit();
			session.flush();
			session.close();
	
		
	    }
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}
	
	public List<Supplier> getSupplierList() 
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Supplier> supplist=session.createQuery("from Supplier").list();
		trans.commit();
		session.flush();
		session.close();
		return supplist;
	}

	public void deletesupplier(String id)
	{

		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		Supplier supplier=(Supplier)session.get(Supplier.class,id);
		session.delete(supplier);
		trans.commit();
		session.clear();
	}
	
	public Supplier getSupplier(String id)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		Supplier supplier=(Supplier)session.get(Supplier.class,id);
		trans.commit();
		session.flush();
		session.close();
		return supplier;
		
	}
	
	public void editsupplier(Supplier supplier)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.update(supplier);
		trans.commit();
		session.flush();
		session.close();
	}


}
