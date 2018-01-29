package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDAO {
	
	public void addProduct(Product product);

	public List<Product> getProductList();
	
	public void deleteProduct(int productid);
	
	public Product getProduct(int productid);
	
	public void editProduct(Product product);
}
