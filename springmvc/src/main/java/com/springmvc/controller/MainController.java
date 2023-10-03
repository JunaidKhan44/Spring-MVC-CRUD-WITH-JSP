package com.springmvc.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.springmvc.dao.ProductDao;
import com.springmvc.model.Product;

/**
 * @author Junaid Khan
 *
 */


@Controller
public class MainController {

	@Autowired
	private ProductDao productDao;

	@RequestMapping("/")
	public String index(Model m) {

		List<Product> lst = productDao.getAllProduct();
		m.addAttribute("productList", lst);
		System.out.println("index is called:");

		return "index";
	}

	@RequestMapping("/add-product")
	public String addProduct(Model model) {

		model.addAttribute("title", "Add Product");
		return "add_product_form";
	}

	@RequestMapping(value = "/handleProduct", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest req) {

		productDao.createProduct(product);

		System.out.println(product);
		return new RedirectView(req.getContextPath() + "/");
	}

	
	@RequestMapping(value = "/delete/{productId}")
	public RedirectView deleteHandler(@PathVariable("productId") int productId,HttpServletRequest req) {

		productDao.deleteProduct(productId);
		
		return new RedirectView(req.getContextPath() + "/");
	}
	
	
	
	@RequestMapping(value = "/update/{productId}")
	public String updateHandler(@PathVariable("productId") int productId,Model m) {

		//productDao.deleteProduct(productId);
		Product product=this.productDao.getSingleProduct(productId);
		m.addAttribute("product",product);
		return "update-form";
	}
	

}
