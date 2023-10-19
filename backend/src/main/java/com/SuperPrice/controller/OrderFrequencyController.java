package com.SuperPrice.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.SuperPrice.model.OrderFrequency;
import com.SuperPrice.service.OrderFrequencyService;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class OrderFrequencyController {
    @Autowired
    private OrderFrequencyService orderFrequencyService;

    // Add frequency
    @PostMapping("/api/frequency")
    public ResponseEntity<OrderFrequency> addFrequency(@RequestBody OrderFrequency frequency) {
        OrderFrequency saved = orderFrequencyService.saveFrequency(frequency);
        return ResponseEntity.ok(saved);
    }

    // Update frequently bought for a given userid
    @GetMapping("/api/frequency/{userId}")
    public List<Object[]> frquentlyBought(@PathVariable String userId) {
        return orderFrequencyService.frequentlyBought(userId);
    }
}
