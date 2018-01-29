package com.niit.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("/Login")
	public String getLogin()
	{
		return "Login";
	}
	@RequestMapping(value = "/loginsuccess")
	public String login_session_attributes(HttpSession session,Model model) 
	{
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();
		
		@SuppressWarnings("unchecked")
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		
		String role="ROLE_USER";
		for (GrantedAuthority authority:authorities) 
		{
		 System.out.println(authority.getAuthority());
		     if (authority.getAuthority().equals(role)) 
		     {
		    	 
		    	 session.setAttribute("UserLoggedIn", "true");
		    	 session.setAttribute("username", userid);
		    	 page="User";
		    	 break;
		     }
		     else 
		     {
		    	 session.setAttribute("LoggedIn", "true");
		    	 session.setAttribute("Administrator", "true");
		    	 page="Admin";
		    	 break;
		    }
		}
		return page;

	}

}
