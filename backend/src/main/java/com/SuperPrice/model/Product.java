package com.SuperPrice.model;

import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "product")
public class Product {
   @Id
   @Column(name = "productid")
   @JsonProperty("PRODUCTID")
   private String productid;
   @Column(name = "name")
   @JsonProperty("NAME")
   private String name;
   @Column(name = "price")
   @JsonProperty("PRICE")
   private String price;
   @Column(name = "store")
   @JsonProperty("STORE")
   private String store;

   @ManyToOne
   @JoinColumn(name = "category_categoryid")
   @JsonProperty("CATEGORY_CATEGORYID")
   private Category category_categoryid;

   /* Getters */
   public String getProductId() {
      return this.productid;
   }

   public String getName() {
      return this.name;
   }

   public String getPrice() {
      return this.price;
   }

   public String getStore() {
      return this.store;
   }

   public Category getCategoryId() {
      return this.category_categoryid;
   }
   
   /* Setters */
   public void setProductId(String productId) {
      this.productid = productId;
   }
  
   public void setName(String name) {
      this.name = name;
   }
   
   public void setPrice(String price) {
      this.price = price;
   }
   
   public void setStore(String store) {
      this.store = store;
   }
   
   public void setCategoryId(Category categoryId) {
      this.category_categoryid = categoryId;
   }
  
}
