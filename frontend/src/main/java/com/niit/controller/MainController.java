package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController 
{
	@RequestMapping("/AboutUs")
	public String showAboutUs()
	{
		return "AboutUs";
	}
	
	@RequestMapping("/login")
	public String showLoginPage()
	{
		return "Login";
	}
	
		@RequestMapping("/Register")
	public String showSignup()
	{
		return "Register";
	}
	
	
	
	@RequestMapping("/ContactUs")
	public String showContact()
	{
		return "ContactUs";
	}
	
	@RequestMapping("/ioo")
	public String showindex()
	{
		return "Main";
	}
	@RequestMapping("/p")
	public String showhead()
	{
		return "Header";
	}
	
	
	
	
	

}
