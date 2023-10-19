package com.SuperPrice.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name =  "`user`")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty("USERID")
    private int userid;
    @JsonProperty("FIRSTNAME")
    private String firstname;
    @JsonProperty("MIDDLENAME")
    private String middlename;
    @JsonProperty("LASTNAME")    
    private String lastname;
    @JsonProperty("ADDRESS")
    private String address;
    @JsonProperty("MOBILE_NUM")
    private String mobile_num;
    @JsonProperty("EMAIL_ADDRESS")
    private String email_address;
    @JsonProperty("PASSWORD_HASH")
    private String password_hash;

    /* Setters */

    public void setFirstName(String fname) {
        this.firstname = fname;
    }

    public void setMiddleName(String mname) {
        this.middlename = mname;
    }

    public void setLastName(String lname) {
        this.lastname = lname;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setMobile(String mobile) {
        this.mobile_num = mobile;
    }

    public void setEmail(String email) {
        this.email_address = email;
    }

    public void setPwHash(String hash) {
        this.password_hash = hash;
    }

    /* Getters */

    public String getFname() {
        return firstname;
    }

    public String getMname() {
        return middlename;
    }

    public String getLname() {
        return lastname;
    }


    public int getUserId() {
        return userid;
    }
    public String getEmail(){
        return email_address;
    }

    public String getPassword(){
        return password_hash;
    }
        
}