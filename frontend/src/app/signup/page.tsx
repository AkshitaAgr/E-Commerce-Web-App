'use client'
import React, { useState } from 'react';
import { text } from 'stream/consumers';
import "./signup.css"


export default function signup(){
  const [userData, setUserData] = useState({
    USERID: '',
    FIRSTNAME: '',
    MIDDLENAME: '',
    LASTNAME: '',
    ADDRESS: '',
    MOBILE_NUM: '',
    EMAIL_ADDRESS: '',
    PASSWORD_HASH: ''
  });

  const handleSubmit = async (event: React.FormEvent) => {
    event.preventDefault();

    try {
      const response = await fetch('http://localhost:8080/api/users', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(userData)
      });

      if (response.ok) {
        // Handle success or perform any necessary actions
        console.log('User data saved successfully.');
      } else {
        // Handle failure or show error messages
        console.error('Failed to save user data.');
      }
    } catch (error) {
      // Handle error or show error messages
      console.error('An error occurred:', error);
    }
  };

  // creating a form to sign up a new user to the website
  // all values are required and are stored in the database in the user table
  return(
    <form onSubmit={handleSubmit}>
      <div className='container'>
        <h1>Sign Up</h1> <br></br>
        <p>Please fill in this form to create an account.</p> <br></br>
        
        <div className = 'lbl'>
        <label className = 'lbl' htmlFor='username'> First Name </label><br></br>
        </div>
        <input type = 'text' placeholder='Enter First Name' name='firstname' required 
        value={userData.FIRSTNAME}
        onChange={(e) => setUserData({ ...userData, FIRSTNAME: e.target.value })}/><br></br>

        <div className = 'lbl'>
        <label className = 'lbl' htmlFor='username'> Middle Name </label><br></br>
        </div>
        <input type = 'text' placeholder='Enter Middle Name' name='middlename' 
        value={userData.MIDDLENAME}
        onChange={(e) => setUserData({ ...userData, MIDDLENAME: e.target.value })}/><br></br>

        <div className = 'lbl'>
        <label className = 'lbl' htmlFor='username'> Last Name </label><br></br>
        </div>
        <input type = 'text' placeholder='Enter Last Name' name='lastname' required 
        value={userData.LASTNAME}
        onChange={(e) => setUserData({ ...userData, LASTNAME: e.target.value })}/><br></br>

        <div className = 'lbl'>
        <label className = 'lbl' htmlFor= 'email'> Email </label><br></br>
        </div>
        <input type = 'text' placeholder='Enter Email' name='email' required
        value={userData.EMAIL_ADDRESS}
        onChange={(e) => setUserData({ ...userData, EMAIL_ADDRESS: e.target.value })}/><br></br>
        
        <div className = 'lbl'>
        <label className = 'lbl' htmlFor= 'password'> Password </label><br></br>
        </div>
        <input type = 'password' placeholder='Enter Password' name='password' required
        /><br></br>

        <div className = 'lbl'>
        <label className = 'lbl' htmlFor= 'email'> Confirm Password </label><br></br>
        </div>
        <input type = 'password' placeholder='Re-enter Password' name='password' required
        value={userData.PASSWORD_HASH}
        onChange={(e) => setUserData({ ...userData, PASSWORD_HASH: e.target.value })}/><br></br>

        <div className = 'lbl'>
        <label className = 'lbl' htmlFor= 'address'> Address </label><br></br>
        </div>
        <input type = 'text' placeholder='Enter Address' name='address' required
        value={userData.ADDRESS}
        onChange={(e) => setUserData({ ...userData, ADDRESS: e.target.value })}/><br></br>

        <div className = 'lbl'>
        <label className = 'lbl' htmlFor= 'mobile'> Mobile Number </label><br></br>
        </div>
        <input type = 'text' placeholder='Enter Mobile Number' name='mobile' required
        value={userData.MOBILE_NUM}
        onChange={(e) => setUserData({ ...userData, MOBILE_NUM: e.target.value })}/><br></br>

        <div className='clearfix'>
          <button className='cancelbtn'> <a href = "/signup"> Cancel </a>  </button>
          <button className='signupbtn'> <a href = "/login"> Sign Up </a> </button><br></br>
        </div>
        <p>Already have an account? <a href = "/login"> Log in</a>.</p>
      </div>
    </form>
  )
}
