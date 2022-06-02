package com.cts.mysqljpa;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.cts.mysqljpa.entity.Product;
import com.cts.mysqljpa.repository.ProductRepository;

@SpringBootApplication
public class Application implements CommandLineRunner{
	
	@Autowired
	ProductRepository repo;
	
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
		
		
	}

	@Override
	public void run(String... args) throws Exception {

		List<Product> productList = repo.findAll();
		for(Product p: productList) {
			 Logger logger = LoggerFactory.getLogger(Application.class);
			logger.info(p.getProductId()+"::"+p.getName()+"::"+p.getDescription()+"::"+p.getPrice());//NOSONAR
		}
	}

}
