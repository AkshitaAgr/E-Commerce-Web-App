package com.SuperPrice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.SuperPrice.model.User;
import com.SuperPrice.service.UserService;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class UserController {
    @Autowired
    private UserService userService;

    // Save user to db
    @PostMapping("/api/users")
    public ResponseEntity<User> addUser(@RequestBody User user) {
        User savedUser = userService.saveUser(user);
        System.out.println("User saved");
        return ResponseEntity.ok(savedUser);
    }

    // Get user by given id
    @GetMapping("/api/user/{userID}")
    public Object[] getUserByID(@PathVariable int userID) {
        System.out.println("ID received: " + userID);
        Object[] user = userService.getUserByID(userID);
        // User found
        if (user != null) {
            System.out.println("User found");
            return user;
        // User not found
        } else {
            System.out.println("User " + userID + " not found ");
            return null;
        }
    }

}
