package com.SuperPrice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SuperPrice.model.Delivery;
import com.SuperPrice.repository.DeliveryRepo;


@Service
public class DeliveryService {
    @Autowired
    private DeliveryRepo userRepository;

    public List<Delivery> getAllDeliveries() {
        return userRepository.findAll();
    }

    public Delivery getDeliveryById(String userid) {
        return userRepository.findById(userid).orElse(null);
    }

    public Delivery Save(Delivery user) {
        return userRepository.save(user);
    }

    public void deleteDelivery(String userid) {
        userRepository.deleteById(userid);
    }
}

