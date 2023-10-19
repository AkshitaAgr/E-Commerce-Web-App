package com.SuperPrice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.SuperPrice.model.Delivery;

@Repository
public interface DeliveryRepo extends JpaRepository<Delivery, String> {

}
