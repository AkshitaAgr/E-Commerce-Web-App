package com.SuperPrice.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "orderitems")
public class OrderItems {
   @EmbeddedId
   @JsonProperty("id")
   private OrderItemsID id;

   @Column(name = "quantity")
   @JsonProperty("QUANTITY")
   private int quantity;

   public OrderItemsID getId() {
      return this.id;
   }

   public int getQuantity() {
      return this.quantity;
   }

   public void setId(OrderItemsID id) {
      this.id = id;
   }

   public void setQuantity(int quantity) {
      this.quantity = quantity;
   }
}
