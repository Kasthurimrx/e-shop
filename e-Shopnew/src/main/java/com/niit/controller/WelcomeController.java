package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {
	
	@RequestMapping("/index")
	public String getWelcome()
	{
		return "index";
	}

	@RequestMapping("/ContactUs")
	public String getContact()
	{
		return "ContactUs";
	}
	
	@RequestMapping("/About")
	public String getAbout()
	{
		return "About";
	}

}
