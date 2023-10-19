// package com.SuperPrice;
// import static org.junit.jupiter.api.Assertions.assertEquals;
// // import static org.junit.jupiter.api.Assertions.assertNotNull;
// import static org.junit.jupiter.api.Assertions.assertNull;

// // import org.junit.jupiter.api.Test;

// // import com.SuperPrice.model.User;

// public class UserTests {

//     @Test
//     public void testUserProperties() {
//         // Arrange
//         User user = new User();
//         user.setFirstName("John");
//         user.setLastName("Doe");
//         user.setAddress("123 Main St");
//         user.setEmail("john@example.com");
//         user.setPwHash("hashedPassword");

//         // Act and Assert
//         assertEquals("John", user.getFname());
//         assertEquals("Doe", user.getLname());
//         assertEquals("123 Main St", user.getAddress());
//         assertEquals("john@example.com", user.getEmail());
//         assertEquals("hashedPassword", user.getPassword());
//     }

//     @Test
//     public void testUserId() {
//         // Arrange
//         User user = new User();
//         user.setUserId(1);

//         // Act and Assert
//         assertEquals(1, user.getUserId());
//     }

//     @Test
//     public void testMiddleName() {
//         // Arrange
//         User user = new User();
//         user.setMiddleName("Middle");

//         // Act and Assert
//         assertEquals("Middle", user.getMname());
//     }

//     @Test
//     public void testEmptyUser() {
//         // Arrange
//         User user = new User();

//         // Act and Assert
//         assertNull(user.getFname());
//         assertNull(user.getLname());
//         assertNull(user.getAddress());
//         assertNull(user.getEmail());
//         assertNull(user.getPassword());
//         assertEquals(0, user.getUserId());
//     }
// }
