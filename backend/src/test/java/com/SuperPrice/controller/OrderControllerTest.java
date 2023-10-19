// package com.SuperPrice.controller;
// import com.SuperPrice.controller.OrderController;
// import com.SuperPrice.model.Order;
// import com.SuperPrice.model.OrderItems;
// import com.SuperPrice.model.Transaction;
// import com.SuperPrice.service.OrderService;
// import com.fasterxml.jackson.databind.ObjectMapper;
// import org.junit.jupiter.api.BeforeEach;
// import org.junit.jupiter.api.Test;
// import org.mockito.InjectMocks;
// import org.mockito.Mock;
// import org.mockito.MockitoAnnotations;
// import org.springframework.http.ResponseEntity;

// import java.util.HashMap;
// import java.util.Map;

// import static org.mockito.Mockito.*;

// public class OrderControllerTest {

//     @InjectMocks
//     private OrderController orderController;

//     @Mock
//     private OrderService orderService;

//     private ObjectMapper objectMapper;

//     @BeforeEach
//     public void setUp() {
//         MockitoAnnotations.initMocks(this);
//         objectMapper = new ObjectMapper();
//     }

//     @Test
//     public void testUpdateOrder() {
//         // Create a sample order, order items, and a transaction
//         Order order = new Order();
//         OrderItems orderItems = new OrderItems();
//         Transaction transaction = new Transaction();

//         // Create a map representing JSON request data
//         Map<String, Object> requestData = new HashMap<>();
//         requestData.put("orderData", order);
//         requestData.put("orderItems", orderItems);
//         requestData.put("transaction", transaction);

//         // Mock the behavior of the orderService methods
//         when(orderService.addTransaction(transaction)).thenReturn(transaction);
//         when(orderService.saveOrder(order)).thenReturn(order);
//         when(orderService.addItems(orderItems)).thenReturn(orderItems);
//         when(orderService.addOrder(order)).thenReturn(order);

//         // Test the updateOrder method
//         ResponseEntity<Order> response = orderController.updateOrder(requestData, null);

//         // Verify that the orderService methods were called
//         verify(orderService).addTransaction(transaction);
//         verify(orderService).saveOrder(order);
//         verify(orderService).addItems(orderItems);
//         verify(orderService).addOrder(order);

        
//         // Here, we are checking if the response entity is not null
//         assert response != null;
//     }

   
// }
