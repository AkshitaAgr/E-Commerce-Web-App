package com.SuperPrice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SuperPrice.model.User;
import com.SuperPrice.repository.UserRepository;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    // Save new user
    public User saveUser(User user) {
        return userRepository.save(user);
    }

    // Delete user 
    public void deleteUser(String userid) {
        userRepository.deleteById(userid);
    }

    // Get user by given email address
    public User getUserByEmail(String email) {
        return userRepository.findByEMAIL_ADDRESS(email);
    }

    // Get user by given userid
    public Object[] getUserByID(int userID){
        return userRepository.findbyID(userID);
    }
   
}

