package com.SuperPrice.model;

import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Table;

@Entity
@Table(name = "transaction")
public class Transaction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "TRANSACTIONID")
    @JsonProperty("TRANSACTIONID")
    private int TRANSACTIONID;
    @Column(name = "STATUS")
    @JsonProperty("STATUS")
    private String STATUS;

    @ManyToOne
    @JoinColumn(name = "USER_USERID")
    private User user;

    public int getId() {
        return this.TRANSACTIONID;
    }

    public String getStatus() {
        return this.STATUS;
    }

    public User getUser() {
        return this.user;
    }

    public void setId(int id) {
        this.TRANSACTIONID = id;
    }

    public void setStatus(String status) {
        this.STATUS = status;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
