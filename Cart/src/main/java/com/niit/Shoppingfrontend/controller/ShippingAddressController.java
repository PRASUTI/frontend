package com.niit.Shoppingfrontend.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.backend.DAO.CartDAO;
import com.niit.backend.DAO.ShippingaddressDAO;
import com.niit.backend.DAO.UserDAO;
import com.niit.backend.model.Cart;
import com.niit.backend.model.Category;
import com.niit.backend.model.Shippingaddress;
import com.niit.backend.model.User;
@Controller
public class ShippingAddressController {
	
	@Autowired
	private ShippingaddressDAO shippingaddressDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private CartDAO cartDAO;
	
	@RequestMapping("newshipping")
	public String newshipping(Model model){
		model.addAttribute("isUserClickedNewShippingAddressButton", "true");
		return "userPage";
	}
	

	@RequestMapping("addShippingaddress")
	public String addShippingaddress(Principal p,@ModelAttribute Shippingaddress shippingaddress){
		shippingaddress.setEmail(p.getName());
		User user = userDAO.getByemail(p.getName());
		shippingaddress.setUserId(user.getId());
		shippingaddressDAO.saveOrUpdate(shippingaddress);
		return "redirect:proceed";
	}
		
	@RequestMapping("proceed")
	public String proceedToDelivery(Principal p, Model model ) {
		String email = p.getName();
		List<Shippingaddress> shippingList = shippingaddressDAO.list(email);
		model.addAttribute("shippingList", shippingList);
		model.addAttribute("viewShippingAddressClicked", "true");
		return "userPage";
	}
	
	@RequestMapping("editShipping")
	public String EditShipping(@RequestParam("shippingId") String shippingId, Model model){
		
		Shippingaddress shippingaddress = shippingaddressDAO.getByeShippingId(shippingId);
		model.addAttribute("shipping", shippingaddress);
		model.addAttribute("EditShippingClicked", "true");
		return "userPage";

	}
	
	@RequestMapping("afterEditShipping")
	public String AfterEdit(@ModelAttribute Shippingaddress shippingaddress, Principal p){
		User user = userDAO.getByemail(p.getName());
		System.out.println("--------------------------------------");
		System.out.println(shippingaddress.getShippingId());
		shippingaddress.setEmail(p.getName());
		shippingaddress.setUserId(user.getId());
		
		shippingaddressDAO.saveOrUpdate(shippingaddress);
		
	return "redirect:proceed";
	}
	
	@RequestMapping("deleteShipping")
	public String deleteShipping(@RequestParam("shippingId") int shippingId){
		shippingaddressDAO.delete(shippingId);
		return "redirect:proceed";
		
	}
	@RequestMapping("shippingAddress")
	public String shippingAddress(@RequestParam("shippingId") String shippingId, Principal p, Model model){
		
		String email  = p.getName();
		System.out.println("--------------------------------------");
		System.out.println("");
		List<Cart> cartList =  cartDAO.list(email);
		
		for(Cart crt : cartList){
			crt.setShippingid(shippingId);
			cartDAO.saveOrUpdate(crt);
			
		}
		model.addAttribute("Successfully", "true");
		
		return "userPage";
		
	}
	@RequestMapping("CreditCard")
	public String CreditCard(Model model) {
		model.addAttribute("CreditCardClicked", "true");
		return "userPage";
	}
	
	@RequestMapping("cod")
	public String cod(Model model) {
		model.addAttribute("CashOnDeliveryClicked", "true");
		return "userPage";
	}
	@RequestMapping("Billingaddress")
	public String Billingaddress(Principal p, Model model) {
		String email  = p.getName();
		List<Cart> cartList = cartDAO.list(email);
		String shippingId = cartList.get(0).getShippingid();
		Shippingaddress shippingaddress = shippingaddressDAO.getByeShippingId(shippingId);
		long total = cartDAO.getTotalAmount(email);
		model.addAttribute("cartList", cartList);
		model.addAttribute("shipping", shippingaddress);
		model.addAttribute("total", total);
		/*cart.shippingid get(0);*/
		model.addAttribute("BillingAddressClicked", "true");
		return "userPage";
	}

}
