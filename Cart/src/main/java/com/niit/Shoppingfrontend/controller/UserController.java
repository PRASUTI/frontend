package com.niit.Shoppingfrontend.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.backend.DAO.AuthoritiesDAO;
import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.DAO.ShippingaddressDAO;
import com.niit.backend.DAO.UserDAO;
import com.niit.backend.model.Authorities;
import com.niit.backend.model.Product;
import com.niit.backend.model.Shippingaddress;
import com.niit.backend.model.User;

@Controller
public class UserController {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private AuthoritiesDAO authoritiesDAO;

	@Autowired
	private Authorities authorities;

	@Autowired
	private ShippingaddressDAO shippingaddressDAO;
	
	@RequestMapping("newUser")
	public String newUser(@ModelAttribute User user, @ModelAttribute Shippingaddress shippingaddress, Model model) {

		user.setEnabled(true);
		authorities.setAuthority("ROLE_USER");
		authorities.setEmail(user.getEmail());

		user.setAuthorities(authorities);
		authorities.setUser(user);

		userDAO.saveOrUpdate(user);
		authoritiesDAO.save(authorities);

		shippingaddress.setUserId(user.getId());
		shippingaddressDAO.saveOrUpdate(shippingaddress);
		
		model.addAttribute("isUserClickedLoginButton", "true");
		model.addAttribute("message", "You have successfully Registered");
		return "home";

	}

	@RequestMapping("afterlogin")
	public String afterlogin(Principal p, Model model) {
		String email = p.getName();
		Authorities role = authoritiesDAO.getEmail(email);
		String validator = role.getAuthority();
		System.out.println(validator);
		System.out.println(role.getAuthority());
	
		
		if(validator.equals("ROLE_ADMIN")){
			 model.addAttribute("isLoggedInAdmin", "true");
			
			 System.out.println("admin");
			return "adminPage";
		}
		else if(validator.equals("ROLE_USER")){
			
			model.addAttribute("isLoggedInUser", true);
			List<Product> productList = productDAO.list();
			model.addAttribute("productList", productList);
			 System.out.println("user");
			return "userPage";
		}
		else{
			model.addAttribute("error", "Invalid username or password!");
			
			return "home";
		}

	}
}
