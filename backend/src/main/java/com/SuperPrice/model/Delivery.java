package com.SuperPrice.model;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name =  "\"Delivery\"")
public class Delivery {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int deliveryid;
    @JsonProperty("STATUS")
    private String STATUS;
    @JsonProperty("DATE")
    private Date DATE;
    @JsonProperty("TIME")    
    private Date TIME;
    @JsonProperty("USER_USERID")
    private String USER_USERID;
    @JsonProperty("ORDER_ORDERID")
    private String ORDER_ORDERID;
    
    public void setStatus(String stat) {
        this.STATUS = stat;
    }

    public void setDate(Date dat) {
        this.DATE = dat;
    }

    public void setTime(Date time) {
        this.TIME = time;
    }

    public void setUserId(String user) {
        this.USER_USERID = user;
    }

    public void setOrderId(String order) {
        this.ORDER_ORDERID = order;
    }
        

    
}
