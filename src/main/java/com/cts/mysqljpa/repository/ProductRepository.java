package com.cts.mysqljpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cts.mysqljpa.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product,Integer>{

	
	
}