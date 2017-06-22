package com.niit.Shoppingfrontend.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.backend.DAO.CategoryDAO;
import com.niit.backend.model.Category;
import com.niit.backend.model.Product;

@Controller
public class CategoryController {

	@Autowired(required = true)
	private CategoryDAO categoryDAO;
	@RequestMapping("addcategory")
	public String addcategory(Model model) {
		model.addAttribute("isAdminClickedaddcategoryButton", "true");
		return "adminPage";
	}

	@RequestMapping("newCategory")	
	public String newCategory(@ModelAttribute Category category, Model model){
		
		categoryDAO.saveOrUpdate(category);
	
		model.addAttribute("message", "Category is added...");
		return "adminPage";
		
	}
	@RequestMapping("viewcategory")
	public String viewcategory(Model model) {
		List<Category> categoryList = categoryDAO.list();
		model.addAttribute("categoryList", categoryList);
		System.out.println("viewCategory");
		for (Category c : categoryList) {
			System.out.println(c.getCategoryId());
		}
		model.addAttribute("isAdminClickedViewCategoryButton", "true");
		return "adminPage";
	}
	@RequestMapping("deleteCategory")
	public String deleteCategorys(@RequestParam("categoryId") String id, Model model){
		
		categoryDAO.delete(id);
		return "viewproduct";
	}
	
	@RequestMapping("editCategory")
	public String editCategory(@RequestParam ("categoryId") String id, Model model){
		Category category = categoryDAO.get(id);
		model.addAttribute("category", category);
		model.addAttribute("editCategoryClicked", true);
		return "viewcategory";
		
	}
	@RequestMapping("categoryEdited")
	public String categoryEdited(@ModelAttribute Category category){
		
		categoryDAO.saveOrUpdate(category);
		return "viewcategory";
	} 
	
}
