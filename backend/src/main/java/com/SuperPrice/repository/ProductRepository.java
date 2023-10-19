package com.SuperPrice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.SuperPrice.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, String> {

    // Get product that matches given productid
    @Query(value = "SELECT p FROM Product p WHERE p.productid = :productid")
    Product getProductById(@Param("productid") String productid);

    // Get list of products that contain search value in product name, category or store name
    @Query(value = "SELECT p.productid, p.name, p.price, p.store, p.category_categoryid FROM Product p " +
                    "JOIN p.category_categoryid c " +
                    "WHERE LOWER(p.name) LIKE LOWER(CONCAT('%', :searchVal, '%')) " +
                    "OR LOWER(p.store) LIKE LOWER(CONCAT('%', :searchVal, '%')) " +
                    "OR LOWER(c.name) LIKE LOWER(CONCAT('%', :searchVal, '%'))"
                    )
    List<Object[]> findProducts(@Param("searchVal") String searchVal);
    
    // Sort list of products in ascending order of price
     @Query(value = "SELECT p.productid, p.name, p.price, p.store, p.category_categoryid FROM Product p " +
                    "JOIN p.category_categoryid c " +
                    "WHERE LOWER(p.name) LIKE LOWER(CONCAT('%', :searchVal, '%')) " +
                    "OR LOWER(p.store) LIKE LOWER(CONCAT('%', :searchVal, '%')) " +
                    "OR LOWER(c.name) LIKE LOWER(CONCAT('%', :searchVal, '%')) " +
                    "ORDER BY p.price"
                    )
    List<Object[]> SortByPriceAsc(@Param("searchVal") String searchVal);

    // Sort list of products in descending order of price
     @Query(value = "SELECT p.productid, p.name, p.price, p.store, p.category_categoryid FROM Product p " +
                    "JOIN p.category_categoryid c " +
                    "WHERE LOWER(p.name) LIKE LOWER(CONCAT('%', :searchVal, '%')) " +
                    "OR LOWER(p.store) LIKE LOWER(CONCAT('%', :searchVal, '%')) " +
                    "OR LOWER(c.name) LIKE LOWER(CONCAT('%', :searchVal, '%')) " +
                    "ORDER BY p.price DESC"
                    )
    List<Object[]> SortByPriceDesc(@Param("searchVal") String searchVal);
}
