package com.niit.Shoppingfrontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String homePage() {

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
