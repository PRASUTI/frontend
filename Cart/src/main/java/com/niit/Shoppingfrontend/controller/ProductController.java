package com.niit.Shoppingfrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Shoppingfrontend.util.FileUtil;
import com.niit.backend.DAO.CategoryDAO;
import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.DAO.SupplierDAO;
import com.niit.backend.model.Category;
import com.niit.backend.model.Product;
import com.niit.backend.model.Supplier;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	
	@RequestMapping("addproduct")
	public ModelAndView newProduct() {
		
		List<Category> categoryList = categoryDAO.list();
		List<Supplier> supplierList = supplierDAO.list();
	ModelAndView mv = new ModelAndView("adminPage");
	mv.addObject("categoryList", categoryList);
	mv.addObject("supplierList", supplierList);
	mv.addObject("isAdminClickedaddproductButton", true);
	return mv;
	 }
	
	@RequestMapping(value = "newProduct", method=RequestMethod.POST)
	public String addProduct(@ModelAttribute Product product, @RequestParam("file") MultipartFile file ,Model model){
		productDAO.saveOrUpdate(product);
		
		String path = "C://Users/user/workspace/Cart/src/main/webapp/WEB-INF/resources/images/product/";
		FileUtil.upload(path, file, product.getId()+".jpg");
		
		model.addAttribute("isAdminClickedViewProductButton", "true");
		
		return "adminPage";
		
	}
	
	@RequestMapping("viewproduct")
	public String viewproduct(Model model) {
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		System.out.println("viewProduct");
		for (Product c : productList) {
			System.out.println(c.getId());
		}
		model.addAttribute("isAdminClickedViewProductButton", "true");
		return "adminPage";
	}
	
	@RequestMapping("deleteProduct")
	public String deleteProducts(@RequestParam("id") String id, Model model){
		
		productDAO.delete(id);
		return "viewproduct";
	}
	
	@RequestMapping("editProduct")
	public String editProduct(@RequestParam ("id") String id, Model model){
		Product product = productDAO.get(id);
		model.addAttribute("product", product);
		model.addAttribute("editProductClicked", true);
		return "viewproduct";
		
	}
	@RequestMapping("productEdited")
	public String productEdited(@ModelAttribute Product product){
		
		productDAO.saveOrUpdate(product);
		return "viewproduct";
	}
}
