// // package com.SuperPrice;
// // import com.SuperPrice.model.Order;
// // import com.SuperPrice.model.Transaction;
// // import org.junit.jupiter.api.BeforeEach;
// // import org.junit.jupiter.api.Test;

// // // import java.sql.Date;

// // import static org.junit.jupiter.api.Assertions.assertEquals;
// // import static org.junit.jupiter.api.Assertions.assertNotNull;
// // import static org.junit.jupiter.api.Assertions.assertNull;

// public class OrderTests {

//     private Order order;

//     @BeforeEach
//     void setUp() {
//         order = new Order();
//     }

//     @Test
//     void testGetSetOrderId() {
//         order.setOrderId(1);
//         assertEquals(1, order.getOrderId());
//     }

//     @Test
//     void testGetSetDate() {
//         Date testDate = new Date(System.currentTimeMillis());
//         order.setDate(testDate);
//         assertEquals(testDate, order.getDate());
//     }

//     @Test
//     void testGetSetSubtotal() {
//         float testSubtotal = 100.0f;
//         order.setSubtotal(testSubtotal);
//         assertEquals(testSubtotal, order.getSubtotal());
//     }

//     @Test
//     void testGetSetShipping() {
//         float testShipping = 10.0f;
//         order.setShipping(testShipping);
//         assertEquals(testShipping, order.getShipping());
//     }

//     @Test
//     void testGetSetTotal() {
//         float testTotal = 110.0f;
//         order.setTotal(testTotal);
//         assertEquals(testTotal, order.getTotal());
//     }

//     @Test
//     void testGetSetDiscount() {
//         float testDiscount = 5.0f;
//         order.setDiscount(testDiscount);
//         assertEquals(testDiscount, order.getDiscount());
//     }

//     // @Test
//     // void testGetSetTransaction() {
//     //     Transaction transaction = new Transaction();
//     //     order.setTransaction(transaction);
//     //     assertNotNull(order.getTransaction());

//     //     // Ensure bidirectional relationship
//     //     assertEquals(transaction.getOrderId(), order);
//     // }

//     @Test
//     void testGetSetTransaction_Null() {
//         order.setTransaction(null);
//         assertNull(order.getTransaction());
//     }
// }
