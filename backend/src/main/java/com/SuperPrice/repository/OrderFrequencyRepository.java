package com.SuperPrice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.SuperPrice.model.OrderFrequency;
import com.SuperPrice.model.OrderFrequencyID;
import com.SuperPrice.model.Product;
import com.SuperPrice.model.User;

@Repository
public interface OrderFrequencyRepository extends JpaRepository<OrderFrequency, OrderFrequencyID> {

    // Get existing orderfrequency for a given user and product
    @Query(value ="SELECT of FROM OrderFrequency of WHERE of.id.userId = :user AND of.id.productId = :product")
    OrderFrequency findByUserAndProduct(@Param("user") User user, @Param("product") Product product);
    
    // Get top 5 frequently bought items
    @Query(value = 
        "SELECT p.productid, p.name, p.price, p.store, p.category_categoryid " +
        "FROM Product p " +
        "LEFT JOIN OrderFrequency o ON o.id.productId.productid = p.productid " +
        "WHERE o.id.userId.userid = :userId " +
        "GROUP BY p.productid " +
        "ORDER BY MAX(o.frequency) DESC " +
        "LIMIT 5")
    List<Object[]> frequentlyBought(@Param("userId") String userId);
}
