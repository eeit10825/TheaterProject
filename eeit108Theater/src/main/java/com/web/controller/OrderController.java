package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.service.impl.ProductServiceImpl;

@Transactional
@Controller
public class OrderController {
	@Autowired
	ProductServiceImpl service;
	
	@RequestMapping("/allProducts")
	public String showAllProduct(Model model) {
		model.addAttribute("products", service.getAll());
		return "allProducts";
	}
	
}