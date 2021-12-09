package com.itwill.yoridogam.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.product.ProductService;

@Controller
public class TestController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/")
	public String welcome(Model model) throws Exception{
		List<Product> pList=productService.selectAll();
		model.addAttribute("pList",pList);
		return "home";
	}
	@RequestMapping(value = "home")
	public String home(Model model) throws Exception{
		List<Product> pList=productService.selectAll();
		model.addAttribute("pList",pList);
		return "home";
	}
	
}
