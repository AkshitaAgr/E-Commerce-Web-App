package com.SuperPrice.model;

import jakarta.persistence.ManyToOne;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Table(name = "cart")
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cartid")
    @JsonProperty("CARTID")
    private int cartid;

    @ManyToOne
    @JoinColumn(name = "USER_USERID")
    @JsonProperty("USER_USERID")
    private User user;

    //getter and setter methods
    public int getCartID(){
        return cartid;
    }

    public User getUser(){
        return user;
    }

    public void setCartID(int cartid){
        this.cartid = cartid;
    }

    public void setUser(User user){
        this.user = user;
    }
}
