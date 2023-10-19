'use client'
import React, { useEffect, useState } from "react";
import './payment.css';

interface PaymentFormData {
  cardNumber: string;
  expirationDate: string;
  cvc: string;
}

const PaymentPage: React.FC = () => {
  const [formData, setFormData] = useState<PaymentFormData>({
    cardNumber: "",
    expirationDate: "",
    cvc: "",
  });

  const currentDate = new Date();
  const year = currentDate.getFullYear();
  const month = String(currentDate.getMonth() + 1).padStart(2, '0'); // Month is zero-based
  const day = String(currentDate.getDate()).padStart(2, '0');

  const formattedDate = `${year}-${month}-${day}`;

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };

   const [category, setCategory] = useState({
    CATEGORYID: '1',
    NAME: 'Fresh Produce'
  });


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
  
  const [cartID, setCartID] = useState(1);
  const [orderitems, setOrderItems] = useState([]);
  useEffect(() => {
    fetchCart();
  }, []);
  
  const fetchCart = async () => {
    try {
      const response = await fetch('http://localhost:8080/api/cartitems/' + cartID, { next: { revalidate: 0 } });
      if (response.ok) {
        const data = await response.json();
        setOrderItems(data);
      } else {
        console.error('Cart ', cartID, ' not found. Status:', response.status);
      }
    } catch (error) {
      console.error('Error:', error);
    }
  };


  const totalPrice = orderitems.reduce((total, item) => {
    // Calculate the total price for each item and add it to the accumulator
    const itemTotal = item[2] * item[5];
    return total + itemTotal;
  }, 0); 

   const [orderData, setOrderData] = useState({          
     SUBTOTAL: totalPrice,
     date: formattedDate,
     SHIPPING: 0.00,
     DISCOUNT: 0.00,
     TOTAL: totalPrice,
     TRANSACTION_TRANSACTIONID: transaction
   }); 


 
   const requestData = {
    //  orderItems,
     transaction,
     orderData
   };

   const handleSubmit = async (event: React.FormEvent) => {
     event.preventDefault();
 
     try {
       const response = await fetch('http://localhost:8080/api/order/' + cartID, {
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
         console.error('Failed to save order data.');
         // Handle failure or show error messages
       }
     } catch (error) {
       console.error('An error occurred:', error);
       // Handle error or show error messages
     }
   };

  return (
    <div className="payment_page">
    <form onSubmit={handleSubmit}>
    <h1>Payment</h1>
      <input
        type="text"
        placeholder="Card Number"
        name="cardNumber"
        value={formData.cardNumber}
        onChange={handleChange}
      />
      <input
        type="text"
        placeholder="Expiration Date"
        name="expirationDate"
        value={formData.expirationDate}
        onChange={handleChange}
      />
      <input
        type="text"
        placeholder="CVC"
        name="cvc"
        value={formData.cvc}
        onChange={handleChange}
      />
      <button type="submit"> <a href="/payment-complete">Pay</a></button>
      <button type="button"> <a href="/home">Cancel Payment</a></button>
    </form>
    </div>
  );
};

export default PaymentPage;