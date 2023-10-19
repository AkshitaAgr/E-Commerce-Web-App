package com.SuperPrice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.SuperPrice.model.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, String> {
    //getting a cart by id
    @Query(value = "SELECT c FROM Cart c WHERE c.cartid = :cartid")
    Cart getCartById(@Param("cartid") String cartid);
}
