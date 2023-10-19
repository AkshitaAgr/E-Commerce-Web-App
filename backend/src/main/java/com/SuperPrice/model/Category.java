package com.SuperPrice.model;

import jakarta.persistence.Id;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Table;

@Entity
@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "categoryid")
    @JsonProperty("CATEGORYID")
    private String categoryid;
    @Column(name = "name")
    @JsonProperty("NAME")
    private String name;


    public String getId() {
        return this.categoryid;
    }

    public String getName() {
        return this.name;
    }

    public void setId(String id) {
        this.categoryid = id;
    }

    public void setName(String name) {
        this.name = name;
    }


}
