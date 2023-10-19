"use client";

import React, { useState, useEffect } from 'react'
import './page.css'

import Header from "../header"

export default function ShoppingCart() {
  const [cartID, setCartID] = useState(1);
  const [cartData, setCartData] = useState([]);
  const [totalPrice, setTotalPrice] = useState(0);

  const handleCart = async () => {
    try {
      const response = await fetch('http://localhost:8080/api/cartitems/' + cartID, { next: { revalidate: 0 } });
      if (response.ok) {
        const data = await response.json();
        setCartData(data);
      } else {
        console.error('User ', cartID, ' not found. Status:', response.status);
      }
    } catch (error) {
      console.error('Error:', error);
    }
  };

  useEffect(() => {
    handleCart();
  }, []);

  return (
    <main>
      <Header></Header>

      <div className="cart">
        <h1> Your Cart </h1>
        {/* displaying the cart items */}
        {cartData && cartData.length > 0 ? (
          <>
            {cartData.map((item) => (
              <div className="cart-item" key={item[0]}>
                <img src={`/${item[1]}.jpg`} alt={item[1]} className="product-image" />
                <div className="product-details">
                  <h2 className="product-name">{item[1]}</h2>
                  <p className="product-quantity">
                    Quantity: {item[5]}
                  </p>
                  <p className="price">Price per Item: ${item[2]}</p>
                  <p className="price">Total Price: ${item[2] * item[5]}</p>
                </div>
              </div>
            ))}
            <div className="cart-total">
              <p>
                Total Cart Price: $
                {cartData.reduce((total, item) => total + item[2] * item[5], 0).toFixed(2)}
              </p>
            </div>
          </>
        ) : (
          <p>Start shopping to see your cart items</p>
        )}
      </div>
      {/* creating buttons for checkout and continuing shopping */}
      <div className='options'>
          <button className='checkout'> <a href='/checkout'> Go To Checkout </a></button>
          <button className='home'> <a href='/home'> Continue Shopping </a></button>
      </div>

    </main>
  );
}