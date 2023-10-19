package com.SuperPrice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.SuperPrice.model.Product;
import com.SuperPrice.repository.ProductRepository;


@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;


    // Save product
    public Product saveProduct(Product product) {
        return productRepository.save(product);
    }

    // Get a list of products that match the search value
    public List<Object[]> findProducts(String searchVal) {
        return productRepository.findProducts(searchVal);
    }

    // Sort products in ascending order
    public List<Object[]> sortProductsAsc(String searchVal) {
        return productRepository.SortByPriceAsc(searchVal);
    }

    // Sort product in descending order
    public List<Object[]> sortProductsDesc(String searchVal) {
        return productRepository.SortByPriceDesc(searchVal);
    }

}

