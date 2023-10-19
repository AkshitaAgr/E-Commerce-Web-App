package com.SuperPrice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.SuperPrice.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, String> {
    // Find user that matches given email address
    @Query("SELECT u FROM User u WHERE u.email_address = :email")
    User findByEMAIL_ADDRESS(String email);
    
    // Find user that matches given userid
    @Query("SELECT u.userid, u.firstname, u.middlename, u.lastname, u.address, u.email_address, u.mobile_num FROM User u WHERE u.userid = :userID")
    Object[] findbyID(int userID);

}
