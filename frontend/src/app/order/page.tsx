'use client'
import React, { useState } from 'react';
import Header from "../header";


export default function order(){
        const [transaction, setTransaction] = useState({
          // TRANSACTIONID: '',
          STATUS: 'PAID',
          "user": {
          USERID: 1,
          FIRSTNAME: "Jane",
          MIDDLENAME: "",
          LASTNAME: "Doe",
          ADDRESS: "1 Street, Suburb",
          MOBILE_NUM: "0123456789",
          EMAIL_ADDRESS: "jane@example.com",
          PASSWORD_HASH: "pass123"
          },
          // order: orderData
        });

        const [product, setProduct] = useState({
          PRODUCTID: 'p33',   
          NAME:  'Red Bell Peppers',
          PRICE: 1.39,
          STORE: 'Organic Oasis',
          CATEGORY_CATEGORYID: '1'
        });

        const [orderData, setOrderData] = useState({          
          SUBTOTAL: 12.00,
          date: '2023-12-12',
          SHIPPING: 2.00,
          DISCOUNT: 0,
          TOTAL: 14.00,
          // TRANSACTION_TRANSACTIONID: transaction
        }); 

        const [orderItems, setOrderItems] = useState({
          id: {
            order: orderData,
            // transaction: transaction,
            product: product,
          },
          QUANTITY: ''
        });
      
        const requestData = {
          orderItems,
          transaction,
          orderData
        };

        const handleSubmit = async (event: React.FormEvent) => {
          event.preventDefault();
      
          try {
            const response = await fetch(process.env.API_URL + '/api/order', {
              method: 'POST',
              headers: {
                'Content-Type': 'application/json'
              },
              body: JSON.stringify(requestData)
            });
      
            if (response.ok) {
              console.log('Order data saved successfully.');
              // Handle success or perform any necessary actions
            } else {
              console.error('Failed to save user data.');
              // Handle failure or show error messages
            }
          } catch (error) {
            console.error('An error occurred:', error);
            // Handle error or show error messages
          }
        };
      
        return(
          <form onSubmit={handleSubmit}>
            <div className='container'>
              <h1>Sign Up</h1> <br></br>
              <p>Please fill in this form to create an account.</p> <br></br>
              
              <div className = 'lbl'>
              <label className = 'lbl' htmlFor='username'> Product </label><br></br>
              </div>
              <input type = 'text' placeholder='Enter Product 1' name='product' 
              // value={orderItems.id.product}
              // onChange={(e) => setOrderItems({ ...orderItems, id: { ...orderItems.id, product: e.target.value }})}
              /><br></br>
      
              <div className = 'lbl'>
              <label className = 'lbl' htmlFor='username'> Quantity </label><br></br>
              </div>
              <input type = 'text' placeholder='Enter Quantity' name='middlename' 
              value={orderItems.QUANTITY}
              onChange={(e) => setOrderItems({ ...orderItems, QUANTITY: e.target.value })}/><br></br>

        <div className='clearfix'>
          <button type = 'button' className='cancelbtn'> Cancel </button>
          <button type = 'submit' className='signupbtn'> Sign Up </button><br></br>
        </div>
      
            </div>
          </form>
        )
}