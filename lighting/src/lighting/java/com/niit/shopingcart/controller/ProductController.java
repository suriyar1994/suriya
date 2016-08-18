package com.niit.shopingcart.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Type;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.Product;
import com.niit.shopingcart.model.Supplier;


@Controller
public class ProductController {

	@Autowired(required=true)
	private ProductDAO productDAO;

	@Autowired(required = true)
	private CategoryDAO categoryDAO;

	@Autowired(required = true)
	private SupplierDAO supplierDAO;

	/*
	 * @Autowired(required=true)
	 * 
	 * @Qualifier(value="productDAO") public void setProductDAO(ProductDAO ps){
	 * this.productDAO = ps; }
	 */

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		return "product";
	}

	// For add and update product both
	/* @RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product) {

		Category category = categoryDAO.getByName(product.getCategory().getName());
		categoryDAO.saveOrUpdate(category);  // why to save??

		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		supplierDAO.saveOrUpdate(supplier); // Why to save??
		
		
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		productDAO.saveOrUpdate(product);

		return "redirect:/products";
		//return "redirect:/uploadFile";

	}
*/
	

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	ModelAndView addProduct(HttpServletRequest request, @RequestParam("file") MultipartFile file,
			@ModelAttribute("product") Product product) {
		
		String fileName = null, error = "";
		if (!file.isEmpty()) {
			try {
				fileName = file.getOriginalFilename();
				byte[] bytes = file.getBytes();
				BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(
						new File("D:/Users/shine/mavenworkspace/lighting/src/main/webapp/resources/images/" + fileName)));
				buffStream.write(bytes);
				buffStream.close();
				error = "You have successfully uploaded " + fileName;
			} catch (Exception e) {
				error = "You failed to upload " + fileName + ": " + e.getMessage();
			}
		} else {
			error = "Unable to upload. File is empty.";
		}
		
		System.out.println(error);
		
		try {
			Category category = categoryDAO.getByName(product.getCategory().getName());
			categoryDAO.saveOrUpdate(category);  // why to save??

			Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
			supplierDAO.saveOrUpdate(supplier); // Why to save??
			
			
			
			product.setCategory(category);
			product.setSupplier(supplier);
			
			product.setCategory_id(category.getId());
			product.setSupplier_id(supplier.getId());
			productDAO.saveOrUpdate(product);
System.out.println("Product saved");
//			return new ModelAndView( "redirect:/products");
			
		} catch (Exception e) {
			return new ModelAndView("product", "command", new Product());
		}
		
		File oldName = new File("D:/Users/shine/mavenworkspace/lighting/src/main/webapp/resources/images/" + fileName);
		File newName = new File("D:/Users/shine/mavenworkspace/lighting/src/main/webapp/resources/images/" + product.getId()
				+ fileName.substring(fileName.indexOf(".")));
		if (oldName.renameTo(newName)) {
			System.out.println(product.getId());
			error = product.getName() + " added Successfully !";
		}
		
		System.out.println(error);
		return new ModelAndView("redirect:/products", "msg", error);
	}




	
	@RequestMapping("product/remove/{id}")
	public String removeProduct(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/products";
	}

	@RequestMapping("product/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		System.out.println("editProduct");
		model.addAttribute("product", this.productDAO.get(id));
		model.addAttribute("listProducts", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
	
		return "product";
	}
	
	@RequestMapping("product/get/{id}")
	public String getSelectedProduct(@PathVariable("id") String id, Model model) {
		System.out.println("getSelectedProduct");
		model.addAttribute("selectedProduct", this.productDAO.get(id));
		model.addAttribute("categoryList", this.categoryDAO.list());
	
		return "/home";
	
	}
	
	@RequestMapping("viewproducts")
	public ModelAndView viewproducts(){
		ModelAndView mv = new ModelAndView("productinfo");
		mv.addObject("plist", productDAO.list());
	 	 return mv;
	}
	@RequestMapping("admin")
	public ModelAndView adminHome(){
		ModelAndView mv = new ModelAndView("adminHome");
		
	 	 return mv;
	}
	@RequestMapping("productdetails/{id}")
	public String productDetails(@PathVariable("id") String id, Model model) {
		
		model.addAttribute("selectedProduct", this.productDAO.get(id));
		
		return "/productDetails";
	
	}
}
