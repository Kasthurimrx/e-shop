package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.niit.dao.CartDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.Cart;
import com.niit.model.Product;

@Controller
public class Checkout {
	

	@Autowired
	CartDAO cartdao;
	
	@RequestMapping(value="/CheckOut")
	public String orderConfirm(HttpSession session,Model m)
	{
		String username=(String)session.getAttribute("username");
		List<Cart> list=cartdao.getcartList(username);
		
		int grandtotal=0;
		for(Cart cart:list)
		{
			grandtotal=grandtotal+(cart.getQuantity()*cart.getProductprice());
		}
		m.addAttribute("grandtotal", grandtotal);
		m.addAttribute("cartitems", list);
		return "confirmorder";
		
	}

	
	@Autowired
	ProductDAO productdao;
	@RequestMapping(value="/cancel")
	public String cancelpage(Model model)
	{
		List<Product> productlist = productdao.getProductList();
		model.addAttribute("productlist", productlist);

		return "viewproduct";
		
	}
	@RequestMapping(value="/receipt")
	public String getreceipt()
	{
		return "thankyou";
		
	}
}
