package com.SuperPrice.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Entity;
import jakarta.persistence.Column;
import jakarta.persistence.Table;
import jakarta.persistence.EmbeddedId;

@Entity
@Table(name =  "cartitems")
public class CartItems {
    @EmbeddedId
    @JsonProperty("ID")
    private CartItemsID id;

    @Column(name = "quantity")
    @JsonProperty("QUANTITY")
    private int quantity;

    //getters and setters
    public CartItemsID getID(){
        return id;
    }

    public void setID(CartItemsID id){
        this.id = id;
    }

    public int getQuantity(){
        return quantity;
    }

    public void setQuantity(int quantity){
        this.quantity = quantity;
    }
}
