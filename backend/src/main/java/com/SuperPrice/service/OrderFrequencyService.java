package com.SuperPrice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SuperPrice.model.OrderFrequency;
import com.SuperPrice.model.OrderFrequencyID;
import com.SuperPrice.repository.OrderFrequencyRepository;


@Service
public class OrderFrequencyService {
    @Autowired
    private OrderFrequencyRepository orderFrequencyRepository;

    // Save order frequency
    public OrderFrequency saveFrequency(OrderFrequency frequency) {
        return orderFrequencyRepository.save(frequency);
    }

    // Get top 5 frequently bought products
    public List<Object[]> frequentlyBought(String userId) {
        return orderFrequencyRepository.frequentlyBought(userId);
    }

}

