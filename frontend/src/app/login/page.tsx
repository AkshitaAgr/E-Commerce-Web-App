'use client'
import React, { useState } from 'react';

/**
 * login is the first page the user sees when they open the application
 * it asks for the user's email and password
 * if the user does not have an account, they can click on the sign up link 
 */

export default function Home() {
  const [email, setEmail] = useState('');
  const [password, setPass] = useState('');
  const [loginError, setLoginError] = useState(false);
  const requestBody = JSON.stringify({ email, password });
  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    try {
      console.log(requestBody);
      const response = await fetch('http://localhost:8080/api/login', {
        method: 'POST',
        headers: {
      'Content-Type': 'application/json',
    },
    body: requestBody,
  });
      if (response.ok) {
        const data = await response.json();
        console.log('Data recieved: ', data);
        setLoginError(!data);
        console.log('Login Error: ', loginError);
      } else {
        console.error('User not found. Status:', response.status);
      }
    } catch (error) {
      console.error('Error:', error);
    }
  };
  return (
    <form onSubmit={handleSubmit}>
      <div className='container'>
        <h1>SuperPrice Application</h1>
        <p>Please log in to continue on to the application</p><br></br>
        {/* email is the username */}
        <div className = 'lbl'>
        <label className = 'lbl' htmlFor= 'email'> Email </label><br></br>
        </div>
        <input type = 'text' placeholder='Enter Email' name='email' value={email} onChange={(e) => setEmail(e.target.value)} required/><br></br>
        
        <div className = 'lbl'>
        <label className = 'lbl' htmlFor= 'password'> Password </label><br></br>
        </div>
        <input type = 'password' placeholder='Enter Password' name='password' value={password} onChange={(e) => setPass(e.target.value)} required/><br></br>
        {loginError && <p style={{ color: 'red' }}>Incorrect username or password. Please try again.</p>} 
        <br></br>
        <div className='clearfix'>
          <button type = 'submit' className='loginbtn'> <a href = "/home">  Log In </a> </button><br></br>
        </div>
        <br />
        <p>Don't have an account? <a href = "/signup"> Sign up</a>.</p>
        <br></br>
        {/* for testing purposes */}
        <p>(Mock log in - email: jane@example.com; password: pass123)</p>
      </div>
    </form>
      );
}
