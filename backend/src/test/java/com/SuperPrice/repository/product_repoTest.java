package com.SuperPrice.repository;

import com.SuperPrice.SuperPriceApplication;
import com.SuperPrice.controller.ProductController;
import com.SuperPrice.model.Category;
import com.SuperPrice.model.Product;
import com.SuperPrice.service.ProductService;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

@SpringBootTest
// @SpringBootTest(classes = SuperPriceApplication.class)
class product_repoTest {

    @Mock
    private ProductService productService;

    @InjectMocks
    private ProductController productController;

    @Mock
    private ProductRepository productRepository;

    @Test
    void addProduct() {
        Product product = new Product();  // Create a product instance
        // Set necessary fields for the product

        when(productService.saveProduct(product)).thenReturn(product);

        ResponseEntity<Product> response = productController.addFrequency(product);

        assertEquals(product, response.getBody());
    }

    @Test
    void testFindProducts() {
        String searchVal = "product";
        List<Object[]> expectedResult = new ArrayList<>();
        // Populate expected results as needed

        when(productRepository.findProducts(searchVal)).thenReturn(expectedResult);

        List<Object[]> actualResult = productRepository.findProducts(searchVal);

        assertEquals(expectedResult, actualResult);
    }

    @Test
    void testGetProductById() {
        String productId = "1";
        Product expectedProduct = new Product();
        expectedProduct.setProductId(productId);

        when(productRepository.getProductById(productId)).thenReturn(expectedProduct);

        Product actualProduct = productRepository.getProductById(productId);

        assertEquals(expectedProduct, actualProduct);
    }
}