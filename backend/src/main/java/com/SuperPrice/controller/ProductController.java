package com.SuperPrice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.SuperPrice.model.Product;
import com.SuperPrice.service.ProductService;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class ProductController {
    @Autowired
    private ProductService productService;
    
    @Autowired
    public ProductController(ProductService service){
        this.productService = service;
    }

    // Save a new product
    @PostMapping("/api/product")
    public ResponseEntity<Product> addFrequency(@RequestBody Product product) {
        Product savedProduct = productService.saveProduct(product);
        return ResponseEntity.ok(savedProduct);
    }

    // Find product that matches the search value received
    @GetMapping("api/product/{searchVal}")
    public List<Object[]> searchProducts(@PathVariable String searchVal) {
        System.out.println("Search value received: " + searchVal);
        return productService.findProducts(searchVal);
    }

    // Sort product according to sort by value
    @GetMapping("api/product/{searchVal}/{sortBy}")
    public List<Object[]> sortProducts(@PathVariable String searchVal, @PathVariable String sortBy) {
        System.out.println("Sort By: " + sortBy);   
        List<Object[]> products;
        // Get price low to high
        if(sortBy.equals("Low")) {
            products = productService.sortProductsAsc(searchVal);
        }
        // Get price high to low
        else {
            products = productService.sortProductsDesc(searchVal);
        }

        return products;
    }
}
