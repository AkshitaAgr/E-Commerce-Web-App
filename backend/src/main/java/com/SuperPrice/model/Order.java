package com.SuperPrice.model;

import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Table;

@Entity
@Table(name = "\"order\"")
public class Order {
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int orderid;
   @Column(name = "`date`")
   @JsonProperty("date")
   private Date date;
   @JsonProperty("SUBTOTAL")
   private float subtotal;
   @JsonProperty("SHIPPING")
   private float shipping;
   @JsonProperty("DISCOUNT")
   private float discount;
   @JsonProperty("TOTAL")   
   private float total;

   @OneToOne
   @JoinColumn(name = "transaction_transactionid")
   @JsonProperty("TRANSACTION_TRANSACTIONID")
   private Transaction transaction;

   public int getOrderId() {
      return orderid;
   }

   public Date getDate() {
      return this.date;
   }

   public float getSubtotal() {
      return this.subtotal;
   }

   public float getShipping() {
      return this.shipping;
   }

   public float getTotal() {
      return this.total;
   }

   public float getDiscount() {
      return this.discount;
   }

   public Transaction getTransaction() {
    return transaction;
   }

   public void setOrderId(int orderId) {
      this.orderid = orderId;
   }
   
   public void setDate(Date date) {
      this.date = date;
   }
   
   public void setSubtotal(float subtotal) {
      this.subtotal = subtotal;
   }
   
   public void setShipping(float shipping) {
      this.shipping = shipping;
   }
   
   public void setTotal(float total) {
      this.total = total;
   }
   
   public void setDiscount(float discount) {
      this.discount = discount;
   }
   
   public void setTransaction(Transaction transaction) {
      this.transaction = transaction;
   }
  
}
