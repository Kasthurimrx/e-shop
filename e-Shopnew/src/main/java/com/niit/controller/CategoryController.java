package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

@Controller
public class CategoryController {
	//it is same as suppliercontroller
	@Autowired
	CategoryDAO categorydao;
	
	@RequestMapping(value="/category")
	public ModelAndView getcategory(@ModelAttribute("category")Category category)
	{
		ModelAndView mv=new ModelAndView("Category","catlist",this.categorydao.getCategoryList());
		return mv;
		
	}

	@RequestMapping(value="saveCategory",method=RequestMethod.POST)
	public String addcategory(Category category,Model model)
	{
		categorydao.addcategory(category);
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		return "Category";
			
	}
	
	@RequestMapping(value="/deletecat")
	public String deletecategorylist(@RequestParam("cid")String catid,Model model)
	{
		
		categorydao.deletecategory(catid);
		model.addAttribute("category", new Category());
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		return "Category";
		
	}
	
	@RequestMapping(value="/editcat")
	public String getcategory(@RequestParam("cid")String catid,Model model)
	{
		Category category=categorydao.getCategory(catid);
		model.addAttribute("categorydata",category);
		model.addAttribute("category1",new Category());
		return "Editcategory";
		
	}

	@RequestMapping(value="/editcat",method=RequestMethod.POST)
	public String updatecategory(Category category,Model model)
	{
		categorydao.editcategory(category);
		model.addAttribute("catlist", this.categorydao.getCategoryList());
		return "Category";
		
	}


}
