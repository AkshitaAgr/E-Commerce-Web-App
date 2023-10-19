package com.SuperPrice.model;

import java.io.Serializable;
import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import java.util.Objects;

@Embeddable
public class CartItemsID implements Serializable {
    
    @ManyToOne
    @JoinColumn(name = "cart_cartid")
    private Cart cartId;

    @ManyToOne
    @JoinColumn(name = "product_productid")
    private Product productId;

    //overriding the hashCode method to generate a unique hash code for CartItemsID objects
    @Override
    public int hashCode() {
        return Objects.hash(cartId, productId);
    }

    //overriding the equals method to compare CartItemsID objects for equality
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        CartItemsID other = (CartItemsID) obj;
        return Objects.equals(cartId, other.cartId) && Objects.equals(productId, other.productId);
    }

    //getters and setters
    public Cart getCartID() {
        return cartId;
    }
    
    public Product getProductID() {
        return productId;
    }

    public void setCartID(Cart cartId) {
        this.cartId = cartId;
    }

    public void setProduct(Product productId) {
        this.productId = productId;
    }
}
