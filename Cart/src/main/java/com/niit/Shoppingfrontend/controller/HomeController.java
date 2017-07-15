package com.niit.Shoppingfrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.model.Product;

@Controller
public class HomeController {
	@Autowired
	private ProductDAO productDAO;

	@RequestMapping("/")
	public String homePage(Model model) {
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		return "home";
	}
	@RequestMapping("categoryBy")
	public String categoryBy(@RequestParam(value = "categoryName") String categoryName, Model model) {
		List<Product> productList = productDAO.getcategoryname(categoryName);
		model.addAttribute("productList", productList);
		return "home";
	}

	@RequestMapping("home")
	public String homePage1(Model model) {
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		return "home";
	}
	@RequestMapping("productDetails")
	public String productdetails(@RequestParam("id") String id,Model model) {
		Product product = productDAO.get(id);
		
		model.addAttribute("product", product);
		model.addAttribute("isUserClickedProductButton", "true");
		return "home";
	}
	@RequestMapping("loginPage")
	public String loginPage(Model model) {
		model.addAttribute("isUserClickedLoginButton", "true");
		return "home";
	}

	@RequestMapping("signupPage")
	public String signupPage(Model model) {
		model.addAttribute("isUserClickedSignUpButton", "true");
		return "home";
	}

}
