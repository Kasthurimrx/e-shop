package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;

public interface CartDAO {
	
public void addcart(Cart cartitem);
	
	public List<Cart> getcartList(String username);

	public void deletecartitem(Cart cart);
	
	public Cart editcartitem(int citemid);
	


}
