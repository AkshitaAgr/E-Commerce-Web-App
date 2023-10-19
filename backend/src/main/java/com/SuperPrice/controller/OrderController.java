package com.SuperPrice.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.SuperPrice.model.Order;
import com.SuperPrice.model.OrderItems;
import com.SuperPrice.model.OrderItemsID;
import com.SuperPrice.model.Product;
import com.SuperPrice.model.Transaction;
import com.SuperPrice.repository.CartItemsRepository;
import com.SuperPrice.service.OrderService;
import com.fasterxml.jackson.databind.ObjectMapper;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private CartItemsRepository cartItemsRepository;
    
    // Add order, orderitem and order_frequency details
    @PostMapping("/api/order/{cartId}")
    public ResponseEntity<Order> updateOrder(@RequestBody Map<String, Object> requestData, @PathVariable String cartId) {
        System.out.println("Saving order...");
        
        ObjectMapper objectMapper = new ObjectMapper();

        // Extract transaction
        Object transactionData = requestData.get("transaction");
        Transaction transaction = objectMapper.convertValue(transactionData, Transaction.class);

        // Extract orderData
        Object orderData = requestData.get("orderData");
        Order order = objectMapper.convertValue(orderData, Order.class);

        // Save transaction
        orderService.addTransaction(transaction);
        order.setTransaction(transaction);
        // Save order
        orderService.saveOrder(order);

        // Get orderItems
        List<Product> cartitems = cartItemsRepository.getAllProducts(cartId);
        for(Product item : cartitems) {
            int quantity = cartItemsRepository.getQuantityOfProduct(cartId, item.getProductId());
            OrderItems orderItems = new OrderItems();
            // Set composite id and quantity
            OrderItemsID orderItemsID = new OrderItemsID();
            orderItemsID.setOrder(order);
            orderItemsID.setProduct(item);
            orderItems.setId(orderItemsID);
            orderItems.setQuantity(quantity);
            // Save orderItems
            orderService.addItems(orderItems);
            
        }

        // Update frequency
        Order saved = orderService.addOrder(order);
        return ResponseEntity.ok(saved);
    }
}
