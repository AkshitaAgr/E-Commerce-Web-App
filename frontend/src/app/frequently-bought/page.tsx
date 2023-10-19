'use client'
import React, { useState, useEffect } from 'react';
import "./globals.css"

export default function frequentlyBought(){
  //states to help with conditional rendering
  const [userid, setUserID] = useState(1);
  const [productID, setProductID] = useState('');
  const [productData, setProductData] = useState([]);
  const [cartData, setCartData] = useState({
    QUANTITY: '1',
    CARTID: '1'
  });

  //function finds the frequently bought items of a user
  const handleSubmit = async () => {

    try {
      const response = await fetch('http://localhost:8080/api/frequency/' + userid, { next: { revalidate: 0 } });
      if (response.ok) {
        const data = await response.json();
        setProductData(data);
      } else {
        console.error('User ', userid, ' not found. Status:', response.status);
      }
    } catch (error) {
      console.error('Error:', error);
    }
  };

  useEffect(() => {
    handleSubmit();
  }, []);

  //function to add a cart item
  const saveCart = async (e: string) => {
    const id = e;

    try {
      const response = await fetch('http://localhost:8080/api/savecartitems/' + id, {
        method: 'POST',
        headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(cartData)
  });
      if (response.ok) {
        console.log('Cart data saved successfully.');
      } else {
        console.error('Failed to save cart data.');
      }
    } catch (error) {
      console.error('Error:', error);
    }
  };

  return (
    <div>
      {productData && productData.length > 0 ?(
        <ul style={{ display: 'flex', flexWrap: 'wrap', backgroundColor: '#f2f2f2' }}>
        {productData.map((product) => (
            <div className="product-card" key={product[0]} >
              <img src={`${product[1]}.jpg`} alt={product[1]} />
              <div className = 'product-name'>
              <p><a href="#">{product[1]}</a></p>
              <br></br>
              </div>
              <div className = 'product-price'>
                <p>${product[2]} </p>
                <br></br>
              </div>
              <div className='product-store'>
                <p><i>{product[3]}</i></p>
                <br></br>
              </div>
              {/* when the button is cliked the item is added to the cart */}
              <button
                type='submit'
                onClick={() => {
                  saveCart(product[0]);
                }}
              >
                <img src="cart.png" className="cartImg" alt="Add to Cart" />
              </button>
              <br></br>
          </div>
        ))}
      </ul>
    ) : (
      <p>Start shopping to see your frequently bought items</p>
      
      )}
    </div>
  );
}
