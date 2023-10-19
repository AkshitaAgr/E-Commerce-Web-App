package com.SuperPrice.model;

import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;


@Embeddable
public class OrderFrequencyID implements Serializable {

    /* Composite primary key class or order_frequency */

    @ManyToOne
    @JoinColumn(name = "user_userid")
    private User userId;

    @ManyToOne
    @JoinColumn(name = "product_productid")
    private Product productId;

    // To compare and check if an instance of userid and productid already exists
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderFrequencyID that = (OrderFrequencyID) o;
        return Objects.equals(userId, that.userId) && Objects.equals(productId, that.productId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userId, productId);
    }

    public void setUser(User user) {
        this.userId = user;
    }

    public void setProduct(Product product) {
        this.productId = product;
    }
}

