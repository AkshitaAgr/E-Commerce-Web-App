package com.SuperPrice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.SuperPrice.model.LoginRequest;
import com.SuperPrice.model.User;
import com.SuperPrice.service.UserService;

// @SpringBootApplication
@RestController
@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping("/api/login")
public class LoginController {
    @Autowired
    private UserService userService;

    // Check if email and password combination match
    @PostMapping
    public Boolean login(@RequestBody LoginRequest loginRequest) {
        String email = loginRequest.getEmail();
        String password = loginRequest.getPassword();
 
        System.out.println("Email received: " + email);

        User user = userService.getUserByEmail(email);
        // User found
        if (user != null) {
            System.out.println("User found");
            String pass = user.getPassword();
            // Password correct
            if (password.equals(pass)){
                System.out.println("Password matches");
                return true;
            }
            // Password incorrect
            else{
                System.out.println("Incorrect password");
                return false;

            }
        // User not found 
        } else {
            System.out.println("User not found");
            return false;
        }
    }
}

