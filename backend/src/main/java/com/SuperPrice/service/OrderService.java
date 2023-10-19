package com.SuperPrice.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SuperPrice.model.Order;
import com.SuperPrice.model.OrderFrequency;
import com.SuperPrice.model.OrderFrequencyID;
import com.SuperPrice.model.OrderItems;
import com.SuperPrice.model.Product;
import com.SuperPrice.model.Transaction;
import com.SuperPrice.model.User;
import com.SuperPrice.repository.OrderFrequencyRepository;
import com.SuperPrice.repository.OrderItemsRepository;
import com.SuperPrice.repository.OrderRepository;
import com.SuperPrice.repository.ProductRepository;
import com.SuperPrice.repository.TransactionRepository;


@Service
public class OrderService {
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private OrderItemsRepository orderItemsRepository;
    @Autowired
    private OrderFrequencyRepository orderFrequencyRepository;
    @Autowired
    private TransactionRepository transactionRepository;
    @Autowired
    private ProductRepository productRepository;


    // save order
    public Order saveOrder(Order order) {
        return orderRepository.save(order);
    }

    public Order addOrder(Order newOrder) {
        // Map to store new frequency of the products in order
        Map<Product, Integer> productFrequencyMap = calculateProductFrequency(newOrder);


        // Calculate frequency of each product
        for (Map.Entry<Product, Integer> entry : productFrequencyMap.entrySet()) {
            Product product = entry.getKey();
            Integer frequency = entry.getValue();
            User user = newOrder.getTransaction().getUser(); 

            // Check if a record exists for this product and user combination
            OrderFrequency existingRecord = orderFrequencyRepository.findByUserAndProduct(user, product);

            // Update frequency of existing record
            if (existingRecord != null) {
                // If a record exists, update the frequency
                System.out.println("Saving to existing order_frequency record");
                OrderFrequencyID orderFrequencyKey = new OrderFrequencyID();
                orderFrequencyKey.setUser(user); 
                orderFrequencyKey.setProduct(product); 
            
                OrderFrequency orderFrequency = new OrderFrequency();
                orderFrequency.setId(orderFrequencyKey);
                orderFrequency.setFrequency(existingRecord.getFrequency() + frequency);
            
                // Save the OrderFrequency entity
                orderFrequencyRepository.save(orderFrequency);

            // Save a new freuquency
            } else {
                System.out.println("Saving new order_frequency record");
                // If no record exists, create a new one
                OrderFrequencyID orderFrequencyKey = new OrderFrequencyID();
                orderFrequencyKey.setUser(user); 
                orderFrequencyKey.setProduct(product); 
            
                OrderFrequency orderFrequency = new OrderFrequency();
                orderFrequency.setId(orderFrequencyKey);
                orderFrequency.setFrequency(frequency);
            
                orderFrequencyRepository.save(orderFrequency);
            }
        }
        return newOrder;
    }

    // Calculate the frequency of products in the new order
    private Map<Product, Integer> calculateProductFrequency(Order newOrder) {
        System.out.println("Calculating frequency");
        Map<Product, Integer> productFrequencyMap = new HashMap<>();
        List<Object[]> items = orderItemsRepository.findProductsByOrderId(newOrder.getOrderId());
        System.out.println("items size " + items.size());
        // Get the quantity of each item
        for (Object[] productQuantity : items) {
            String productId = (String) productQuantity[0]; 
            Product product = productRepository.getProductById(productId);
            int quantity = (int) productQuantity[1]; 
            // Update the frequency for this product
            productFrequencyMap.put(product, productFrequencyMap.getOrDefault(product, 0) + quantity);
        }

        return productFrequencyMap;
    }

    // Add items to orderitems
    public OrderItems addItems(OrderItems orderItems) {
        return orderItemsRepository.save(orderItems);
    }

    // Add a transaction to Transaction
    public Transaction addTransaction(Transaction transaction) {
        return transactionRepository.save(transaction);
    }

}

