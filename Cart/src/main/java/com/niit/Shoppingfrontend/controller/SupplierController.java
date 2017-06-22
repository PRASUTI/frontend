package com.niit.Shoppingfrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.backend.DAO.SupplierDAO;
import com.niit.backend.model.Category;
import com.niit.backend.model.Product;
import com.niit.backend.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("addsupplier")
	public String addsupplier(Model model) {
		model.addAttribute("isAdminClickedaddsupplierButton", "true");
		return "adminPage";
	}
	
	@RequestMapping("newSupplier")
	public String newSupplier(@ModelAttribute Supplier supplier, Model model){
		
		supplierDAO.saveOrUpdate(supplier);
		
		model.addAttribute("message", "Supplier is added");
		return "adminPage";
		
	}
	@RequestMapping("viewsupplier")
	public String viewsupplier(Model model) {
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList", supplierList);
		System.out.println("viewSupplier");
		for (Supplier c : supplierList) {
			System.out.println(c.getId());
		}
		model.addAttribute("isAdminClickedViewSupplierButton", "true");
		return "adminPage";

}
	@RequestMapping("deleteSupplier")
	public String deleteSuppliers(@RequestParam("id") String id, Model model){
		
		supplierDAO.delete(id);
		return "viewsupplier";
	}
	
	@RequestMapping("editSupplier")
	public String editSupplier(@RequestParam ("id") String id, Model model){
		Supplier supplier = supplierDAO.get(id);
		model.addAttribute("supplier", supplier);
		model.addAttribute("editSupplierClicked", true);
		return "viewsupplier";
		
	}
	@RequestMapping("supplierEdited")
	public String supplierEdited(@ModelAttribute Supplier supplier){
		
		supplierDAO.saveOrUpdate(supplier);
		return "viewsupplier";
	}
}
