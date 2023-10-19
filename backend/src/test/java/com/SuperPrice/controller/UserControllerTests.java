package com.SuperPrice.controller;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

import org.junit.jupiter.api.Test;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.SuperPrice.controller.UserController;
import com.SuperPrice.model.User;
import com.SuperPrice.service.UserService;

public class UserControllerTests {

    // @Test
    // public void testAddUser() {
    //     // Arrange
    //     User userToAdd = new User();
    //     userToAdd.setFirstName("John");
    //     userToAdd.setLastName("Doe");

    //     UserService userService = mock(UserService.class);
    //     when(userService.saveUser(any(User.class))).thenReturn(userToAdd);

    //     UserController userController = new UserController();
    //     //userController.setUserService(userService);

    //     // Act
    //     ResponseEntity<User> responseEntity = userController.addUser(userToAdd);

    //     // Assert
    //     assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
    //     assertEquals(userToAdd, responseEntity.getBody());
    // }

   
}