package com.SuperPrice.model;


import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "order_frequency")
public class OrderFrequency {
    @EmbeddedId
    private OrderFrequencyID id;

    @Column(name = "frequency")
    private int frequency;

    public OrderFrequencyID getOrderFrequencyID() {
        return id;
    }

    public int getFrequency() {
        return frequency;
    }

    public void setFrequency(int newFrequency) {
        this.frequency = newFrequency;
    }

    public void setId(OrderFrequencyID orderFrequencyID) {
        this.id = orderFrequencyID;
    }
    
}
