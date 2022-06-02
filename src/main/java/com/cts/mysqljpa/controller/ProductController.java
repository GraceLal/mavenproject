package com.cts.mysqljpa.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cts.mysqljpa.entity.Product;
import com.cts.mysqljpa.repository.ProductRepository;


@Controller
public class ProductController {


	@Autowired
	private ProductRepository repo;
	
	
	@RequestMapping(value="/productlink",method=RequestMethod.GET)//NOSONAR
	public String sendData(Model model) {
		model.addAttribute("product", new Product());
		
		return "productform";//NOSONAR
	}
	@RequestMapping(value="/productdata", params="InsertData" ,method=RequestMethod.POST)//NOSONAR
	public String receiveData(@ModelAttribute("product")Product product, Model model) { //NOSONAR
		
		
		Product pro = new Product();
		pro.setProductId(product.getProductId());
		pro.setName(product.getName());
		
		pro.setDescription(product.getDescription());
		pro.setPrice(product.getPrice());
		repo.save(pro);
		
		List<Product> productList = repo.findAll();
		model.addAttribute("ProductList", productList);
		
		return "productform";//NOSONAR
	}
	
	
	@RequestMapping(value="/productdata", params="Update" ,method=RequestMethod.POST)//NOSONAR
	public String updateData(@ModelAttribute("product")Product product, Model model) {//NOSONAR
		
		
		if(repo.existsById(product.getProductId())) {
			Product p = repo.getById(product.getProductId());
			p.setProductId(product.getProductId());
			p.setName(product.getName());
			p.setDescription(product.getDescription());
			p.setPrice(product.getPrice());
			repo.save(p);
		}
		
		return "productform";//NOSONAR
	}
	
	@RequestMapping(value="/productdata", params="ShowTable" ,method=RequestMethod.POST)//NOSONAR
	public String showData(@ModelAttribute("product")Product product, Model model) {//NOSONAR
		
		List<Product> productList = repo.findAll();
		model.addAttribute("ProductList", productList);
		return "product-list";
	}
	
	
	@RequestMapping(value="/productdata", params="ShowRecord" ,method=RequestMethod.POST)//NOSONAR
	public String showRecordData(@ModelAttribute("product")Product product, Model model) {//NOSONAR
		Optional<Product> p = repo.findById(product.getProductId());
		if(p.isPresent()) {
		model.addAttribute("productid", p.get().getProductId());
		model.addAttribute("productname", p.get().getName());
		model.addAttribute("productdesc", p.get().getDescription());
		model.addAttribute("productprice", p.get().getPrice());
		}
		return "productRecord";
	}
	
	@RequestMapping(value="/productdata", params="Delete" ,method=RequestMethod.POST)//NOSONAR
	public String deleteData(@ModelAttribute("product")Product product, Model model) {//NOSONAR
		
		repo.deleteById(product.getProductId());
		
		return "productform";//NOSONAR
	}
	
}
