package com.niit.Shoppingfrontend.controller;

import java.security.Principal;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.backend.DAO.CartDAO;
import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.DAO.UserDAO;
import com.niit.backend.model.Cart;
import com.niit.backend.model.Product;
import com.niit.backend.model.User;

@Controller
public class CartController {

	@Autowired(required = true)
	private CartDAO cartDAO;
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private Cart cart;

	@RequestMapping("myCart")
	public String usercart(Principal principal, Model model) {
		String emailid = principal.getName();
		List<Cart> cartList = cartDAO.list(emailid);
		Long sum = cartDAO.getTotalAmount(emailid);
		model.addAttribute("total", sum);
		model.addAttribute("cartList", cartList);
		model.addAttribute("isUserClickedCartButton", "true");

		return "userPage";
	}
	@RequestMapping("admincart")
	public String admicart(Principal principal, Model model) {
		String emailid = principal.getName();
		List<Cart> cartList = cartDAO.list();
		Long sum = cartDAO.getTotalAmount(emailid);
		model.addAttribute("total", sum);
		model.addAttribute("cartList", cartList);
		model.addAttribute("isAdminClickedCartButton", "true");

		return "adminPage";
	}

	@RequestMapping("addtocart")
	public String addCart(@RequestParam(value = "id") String id, Principal p, Model model) {

		Product product = productDAO.get(id);

		User user = userDAO.getByemail(p.getName());

		Cart crt = cartDAO.getByUserandProduct(p.getName(), id);

		if (product.getStock() > 0) {

			if (cartDAO.itemAlreadyExist(p.getName(), id)) {
				int qty = crt.getQuantity() + 1;
				crt.setQuantity(qty);
				crt.setTotal(product.getPrice() * qty);
				cartDAO.saveOrUpdate(crt);
			}

			else {
				Random t = new Random();
				int day = 2 + t.nextInt(7);

				cart.setUserid(user.getId());
				cart.setUsername(user.getUsername());
				cart.setEmailid(p.getName());
				cart.setProductid(product.getId());
				cart.setProductName(product.getProductname());
				cart.setQuantity(1);
				cart.setPrice(product.getPrice());
				cart.setTotal(cart.getPrice() * cart.getQuantity());
				cart.setStatus("N");
				cart.setDate(day);

				cartDAO.saveOrUpdate(cart);
			

			}
			int stc = product.getStock() - 1;
			product.setStock(stc);
			productDAO.saveOrUpdate(product);

			return "redirect:myCart";
		}

		else {
			model.addAttribute("product", product);
			model.addAttribute("ProductDetails", "true");
			model.addAttribute("msg", "PRODUCT OUT OF STOCK");
			return "userPage";
		}
	}
	
	@RequestMapping("decreaseQty")
	public String decreaseQty(@RequestParam("id") int id){
		Cart cart = cartDAO.getByCartId(id);
		int qty = cart.getQuantity()-1;
		cart.setQuantity(qty);
		
		Product pro = productDAO.get(cart.getProductid());
		cart.setTotal(qty * pro.getPrice());
		pro.setStock(pro.getStock()+1);
		productDAO.saveOrUpdate(pro);
		cartDAO.saveOrUpdate(cart);
			
		return "redirect:myCart";
	}
	
	@RequestMapping("increaseQty")
	public String increaseQty(@RequestParam("id") int id){
		Cart cart = cartDAO.getByCartId(id);
		int qty = cart.getQuantity()+1;
		cart.setQuantity(qty);
		Product pro = productDAO.get(cart.getProductid());
		pro.setStock(pro.getStock()-1);
		cart.setTotal(qty * pro.getPrice());
		productDAO.saveOrUpdate(pro);
		cartDAO.saveOrUpdate(cart);
				
		return "redirect:myCart";
	}
	@RequestMapping("deleteCart")
	public String deleteCart(@RequestParam("id") int id){
		
		Cart cart = cartDAO.getByCartId(id);		

		Product product = productDAO.get(cart.getProductid());
		
		int qrt = cart.getQuantity();
		int stc = product.getStock();
		
		product.setStock(stc + qrt);
		productDAO.saveOrUpdate(product);
		
		cartDAO.deleteByCartId(id);
		return "redirect:myCart";
	}

}
