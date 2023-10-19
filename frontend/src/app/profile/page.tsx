'use client'
import React, { useState, useEffect } from 'react'
import "./profile.css"

import Header from "../header"

export default function Profile() {
  const [userData, setUserData] = useState([]);
  const userID: number = 1;

  useEffect(() => {
    fetchData(userID);
  }, []);

  const fetchData = async (userID: number) => {
    try {
      const response = await fetch('http://localhost:8080/api/user/' + userID);
      if (response.ok) {
        const data = await response.json();
        setUserData(data[0]);
        console.log(userData);
      } else {
        console.error('User not found. Status:', response.status);
      }
    } catch (error) {
      console.error('Error:', error);
    }
  };

  return (
    <>
      <Header></Header>
      <div className="profile-page">
            <br></br>
            <h1 className="profile-heading">Your profile</h1>
            <div className="profile-content">
                <div className="profile">
                    <div className="profile-header">
                        <img className="profile-picture" />
                        <h2 className="profile-info">Profile info</h2>
                        <br></br>
                        <h1 className="profile-name">Profile name: {userData[1]} {userData[2]} {userData[3]}</h1>
                        <p className="profile-location">Address: {userData[4]}</p>
                    </div>
                </div>
            </div>
            <div className="profile-content">
                <div className="profile-details">
                    <h2 className="profile-info">Contact Information</h2>
                    <br></br>
                    <p className="profile-email">Email: {userData[5]} </p>
                    <p className="profile-number">Phone Number: {userData[6]} </p>
                </div>
            </div>
        </div>
    </>
 )
};