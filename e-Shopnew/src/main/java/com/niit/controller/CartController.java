package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.Cart;
import com.niit.model.Product;

@Controller
public class CartController {
	
	@Autowired
	ProductDAO productdao;
	
	@Autowired
	CartDAO cartdao;
	
	@RequestMapping(value="/addtocart/{productid}")
	public String addtocart(@PathVariable("productid") int productid,@RequestParam("quantity") int quantity ,HttpSession session ,Model model)
	{
		
		Cart cart=new Cart();
		String username=(String)session.getAttribute("username");
		cart.setCartid(1001);
		cart.setProductid(productid);
		cart.setQuantity(quantity);
		cart.setStatus("N");
		cart.setUsername(username); 
		Product product=productdao.getProduct(productid);
		cart.setProductname(product.getProductname());
		cart.setProductprice(product.getProductprice());
		cartdao.addcart(cart);
		List<Cart> list=cartdao.getcartList(username);
		model.addAttribute("cartitems", list);
		return "cart";
	}
	

	@RequestMapping("cart")
	public String getcart( HttpSession session,Model model)
	{
		String username=(String)session.getAttribute("username");
		List<Cart> list=cartdao.getcartList(username);
		model.addAttribute("cartitems", list);
		return "cart";
		
	}
	
	@RequestMapping("/deleteCartItem/{citemid}")
	public String DelteCartItems(@PathVariable("citemid")int citemid,HttpSession httpSession,Model model)
	{   
		Cart cart = (Cart)cartdao.editcartitem(citemid);
	    cartdao.deletecartitem(cart);
	    String username=(String)httpSession.getAttribute("username");
	    List<Cart> list=cartdao.getcartList(username);
	    model.addAttribute("cartitems",list);
		return "cart";
	}

}
