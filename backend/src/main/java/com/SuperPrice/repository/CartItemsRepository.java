package com.SuperPrice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.SuperPrice.model.CartItems;
import com.SuperPrice.model.Cart;
import com.SuperPrice.model.Product;
import com.SuperPrice.model.CartItemsID;

@Repository
public interface CartItemsRepository extends JpaRepository<CartItems, CartItemsID> {

    //query to find a cart item by cart and product id
    @Query(value ="SELECT c FROM CartItems c WHERE c.id.cartId = :cart AND c.id.productId = :product")
    CartItems findByCartAndProduct(@Param("cart") Cart cart, @Param("product") Product product);
    
    //query to find all product ids by the cart id
    @Query("SELECT c.id.productId " +
        "FROM CartItems c " +
        "WHERE c.id.cartId.cartid = :cartId")
    List<Product> getAllProducts(@Param("cartId") String cartId);

    //query to get the quantity of an item by its id
    @Query("SELECT c.quantity " +
        "FROM Product p " +
        "LEFT JOIN CartItems c ON c.id.productId.productid = p.productid " +
        "WHERE c.id.cartId.cartid = :cartId " +
        "AND p.productid = :productId")
    int getQuantityOfProduct(@Param("cartId") String cartId, @Param("productId") String productId);

    //query to find all cart items by a cart id
    @Query(value = 
        "SELECT p.productid, p.name, p.price, p.store, p.category_categoryid, c.quantity " +
        "FROM Product p " +
        "LEFT JOIN CartItems c ON c.id.productId.productid = p.productid " +
        "WHERE c.id.cartId.cartid = :cartId")
    List<Object[]> allCartItemsByCartID(@Param("cartId") String cartId);
}
