package com.SuperPrice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.SuperPrice.model.Transaction;

@Repository
public interface TransactionRepository extends JpaRepository<Transaction, String> {

}
