'use client'
import React, { useEffect, useState } from "react";
import './checkout.css';


interface CheckoutFormData {
  name: string;
  email: string;
  shippingAddress: string;
  billingAddress: string;
  cardNumber: string;
}

interface Order {
  id: number;
  name: string;
  image: string;
  quantity: number;
  pricePerItem: number;
}

export default function CheckoutPage(){
  // const [formData, setFormData] = useState<CheckoutFormData>({
  //   name: "John Doe",
  //   email: "Johndoe@gmail.com",
  //   shippingAddress: "3 Fitzroy St,VIC",
  //   billingAddress: "",
  //   cardNumber: "",
  // });

  // const [order, setOrder] = useState<Order[]>([
  //   {
  //     id: 1,
  //     name: 'Avacado',
  //     image: 'avacado.jpg',
  //     quantity: 3,
  //     pricePerItem: 4.00,
  //   },
  //   {
  //     id: 2,
  //     name: 'Banana',
  //     image: 'banana.jpg',
  //     quantity: 1,
  //     pricePerItem: 3.00,
  //   },
  //   {
  //     id: 3,
  //     name: 'Carrots',
  //     image: 'carrots.jpg',
  //     quantity: 1,
  //     pricePerItem: 5.00,
  //   },
  // ]);
  const [userID, setUserID] = useState(1);
  useEffect(() => {
    fetchData(userID);
  }, []);
  
  const [user, setUserData] = useState([]);
  const fetchData = async (userID: number) => {
    try {
      const response = await fetch('http://localhost:8080/api/user/' + userID);
      if (response.ok) {
        const data = await response.json();
        setUserData(data[0]);
        console.log(user);
      } else {
        console.error('User not found. Status:', response.status);
      }
    } catch (error) {
      console.error('Error:', error);
    }
  };

  const [cartID, setCartID] = useState(1);
  const [order, setOrderData] = useState([]);
  useEffect(() => {
    fetchCart();
  }, []);

  const fetchCart = async () => {
    try {
      const response = await fetch('http://localhost:8080/api/cartitems/' + cartID, { next: { revalidate: 0 } });
      if (response.ok) {
        const data = await response.json();
        setOrderData(data);
      } else {
        console.error('Cart ', cartID, ' not found. Status:', response.status);
      }
    } catch (error) {
      console.error('Error:', error);
    }
  };

  // const calculateTotalPrice = (item: Order) => {
  //   return item.pricePerItem * item.quantity;
  // };
  const totalPrice = order.reduce((total, item) => {
    // Calculate the total price for each item and add it to the accumulator
    const itemTotal = item[2] * item[5];
    return total + itemTotal;
  }, 0).toFixed(2); 

  // const orderTotal = order.reduce(
  //   (total, item) => total + calculateTotalPrice(item),
  //   0
  // );

  // const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
  //   const { name, value } = e.target;
  //   setFormData({ ...formData, [name]: value });
  // };

  const handleSubmit = async () => {
    // Validate the form data.

    // Submit the form data to your payment processor.

    // Redirect the customer to the order confirmation page.
  };

  return (
    <main>
    <div className="payment_page">
        
      <form onSubmit={handleSubmit}>
        <h1>Checkout</h1>
          <input
            type="text"
            placeholder="Name"
            name="name"
            // value={formData.name}
            value={user[1] + " " + user[2] + " " + user[3]} 
            // onChange={handleChange}
          />
          <input
            type="email"
            placeholder="Email"
            name="email"
            value={user[5]}
            // onChange={handleChange}
          />
          <input
            type="text"
            placeholder="Shipping Address"
            name="shippingAddress"
            value={user[4]}
            // onChange={handleChange}
          />

          <div className="order-review">
            <h2>Review Order</h2>
            <br></br>
            {order.map((item) => (
              <div key={item[0]} className="order-item">
                <img src={`${item[1]}.jpg`} alt={item[1]}></img>
                <p>{item[1]}</p>
                <p>Quantity: {item[5]}</p>
                <p>Price per Item: ${item[2]}</p>
                <p>Total Price: ${item[2] * item[5]}</p>
              </div>
            ))}
            {/* <div className="order-item">
              <img src="skim_milk.jpg" alt="Item 1" />
              <p>Product Name 1</p>
              <p>Price: $XX.XX</p>
            </div>
            <div className="order-item">
              <img src="milk.png" alt="Item 2" />
              <p>Product Name 2</p>
              <p>Price: $YY.YY</p>
            </div> */}
            <br></br>
            <p> Total Price: ${totalPrice}</p>
          </div>
          {/* <p>Please select a delivery time slot</p> <br></br>
          <label htmlFor="timeSlot">Time Slot:         </label>
            <select
              id="timeSlot"
              name="timeSlot"
              defaultValue="standard"
            >
              <option value="9:00 AM - 10:00 AM">9:00 AM - 10:00 AM</option>
              <option value="10:00 AM - 11:00 AM">10:00 AM - 11:00 AM</option>
              <option value="11:00 AM - 12:00 PM">11:00 AM - 12:00 PM</option>
            </select> */}
            <br></br>
            <br></br>
            <button type="submit"> <a href="/payment"> Finalise </a></button>
            <button type="submit"> <a href="/home"> Cancel Checkout </a> </button>
      </form>
    </div>
    </main>
  );
};

