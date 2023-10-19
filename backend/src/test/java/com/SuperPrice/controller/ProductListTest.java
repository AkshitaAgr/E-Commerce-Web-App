package com.SuperPrice.controller;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
import org.junit.jupiter.api.BeforeEach;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.mockito.Mockito.*;

import org.springframework.beans.factory.annotation.Autowired;
import javax.sql.DataSource;

import com.SuperPrice.controller.ProductController;
import com.SuperPrice.model.Product;
import com.SuperPrice.repository.ProductRepository;
import com.SuperPrice.model.CartItemsID;
import com.SuperPrice.model.Category;
import com.SuperPrice.service.ProductService;
import com.fasterxml.jackson.core.sym.Name;

import static org.mockito.Mockito.when;

@SpringBootTest
class ProductListTest {

    private ProductService service;
    private ProductController controller;
    private ProductRepository repo;

    @BeforeEach
    void setUp() {
        this.service = mock(ProductService.class);
        this.repo = mock(ProductRepository.class);
    	this.controller = new ProductController(this.service);
        
    }
    @Test
    void SearchProduct() throws Exception {
        Category cat = new Category();
        Product product = new Product();  // Create a product instance
        // Set necessary fields for the product
        cat.setId("1");
        cat.setName("fruit");
        product.setCategoryId(cat);
        product.setName("apple");
        product.setPrice("100");
        product.setProductId("1");
        product.setStore("coles");
        //service.saveProduct(product);
        controller.addFrequency(product);
        PrintStream originalSystemOut = System.out;
        try{
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            System.setOut(new PrintStream(outputStream));
            controller.searchProducts("apple");
            String printedContent = outputStream.toString();
            List<String> lines = Arrays.asList(printedContent.split(System.lineSeparator()));

            // Assert the number of times the function is expected to print
            assertEquals(1, lines.size());

            // Assert the content of each print
            assertEquals("Search value received: apple", lines.get(0).trim());
            // assertEquals("product found", lines.get(1).trim());
        }
        finally {
            // Restore the original System.out
            System.setOut(originalSystemOut);
        }
        

       // assertEquals(ResponseEntity.ok(product),controller.searchProducts("apple"));
    }

    @Test
    void GetSetid(){
        Category cat = new Category();
        // Set necessary fields for the product
        cat.setId("1");
        String id = cat.getId();
        assertEquals("1", id);
    }
    @Test
    void GetSetName(){
        Category cat = new Category();
        // Set necessary fields for the product
        cat.setName("fruit");
        String name = cat.getName();
        assertEquals("fruit", name);

    }
    @Test
    void GetSetPrice(){
        Product product = new Product();
        // Set necessary fields for the product
        product.setPrice("100");
        String price = product.getPrice();
        assertEquals("100", price);
    }
    @Test
    void GetSetProductName(){
        Product product = new Product();
        // Set necessary fields for the product
        product.setName("apple");
        String price = product.getName();
        assertEquals("apple", price);
    }
    @Test
    void GetSetProductId(){
        Product product = new Product();
        // Set necessary fields for the product
        product.setProductId("p01");
        String price = product.getProductId();
        assertEquals("p01", price);
    }
    @Test
    void GetSetProductStore(){
        Product product = new Product();
        // Set necessary fields for the product
        product.setStore("Coles");
        String price = product.getStore();
        assertEquals("Coles", price);
    }
    @Test
    void sortProduct(){
        Category cat = new Category();
        Product product1 = new Product();  // Create a product instance
        Product product2 = new Product();
        List<String>lines = new ArrayList<>();
        // Set necessary fields for the product
        cat.setId("1");
        cat.setName("fruit");
        product1.setCategoryId(cat);
        product1.setName("apple");
        product1.setPrice("100");
        product1.setProductId("1");
        product1.setStore("coles");

        product2.setCategoryId(cat);
        product2.setName("apple");
        product2.setPrice("50");
        product2.setProductId("1");
        product2.setStore("coles");

        controller.addFrequency(product2);
        controller.addFrequency(product1);
        
        service.saveProduct(product2);
        service.saveProduct(product1);
        repo.save(product1);


        assertEquals(lines,service.findProducts("apple"));


    }
}