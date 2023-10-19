package com.SuperPrice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.SuperPrice.model.OrderItems;

@Repository
public interface OrderItemsRepository extends JpaRepository<OrderItems, String> {

    // Get productid and quantity from the given orderid
    @Query(value = "SELECT oi.product_productid, oi.quantity FROM orderitems oi WHERE oi.order_orderid = :id", nativeQuery=true)
    List<Object[]> findProductsByOrderId(@Param("id") int id);
}
