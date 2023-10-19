'use client'
import img from 'next/image'
import React , { useState } from 'react'
import { flattenDiagnosticMessageText } from 'typescript';
import FrequentlyBought from '../frequently-bought/page';
import './home.css'

export default function Home() {
/**
 * These states help with conditional rendering. There are many elements of the 
 * home page and they do not all need to rendered simultaneously. For example,
 * the frequently bought section should only be rendered after a user has bought 
 * something from the website. Similarly, the search results should only be 
 * rendered when something is searched for. 
 */
  const [searchVal, setSearch] = useState('');
  const [products, setProducts] = useState([]);
  const [sortedProducts, setSortedProducts] = useState([]);
  const [showFrequentlyBought, setFrequentlyBought] = useState(true);
  const [showSearchResults, setSearchResults] = useState(false);
  const [showSortResults, setSortResults] = useState(false);
  const [sortBy, setSortBy] = useState('');
  const [cartData, setCartData] = useState({
    QUANTITY: '1',
    CARTID: '1'
  });

  const handleSubmit = async (e: React.FormEvent) => {
  e.preventDefault();

    try {
      const response = await fetch('http://localhost:8080/api/product/' + searchVal);
      if (response.ok) {
        const data = await response.json();
        setFrequentlyBought(false);
        setProducts(data);
        setSearchResults(true);
        setSortResults(false);
        console.log("search products ", JSON.stringify(products));
      } else {
        console.error('Products not found. Status:', response.status);
      }
    } catch (error) {
      console.error('Error:', error);
    }
  };

  const handleSortBy = async (e: string) => {
    const sortValue = e;

    // Send a GET request to the backend API with the selected sort value
    try {
      const response = await fetch(`http://localhost:8080/api/product/${searchVal}/${sortValue}`);
      if (response.ok) {
        const sortedProducts = await response.json();
        setSortedProducts(sortedProducts);
        setSearchResults(false);
        setSortResults(true);
        // Handle the sorted products data
        console.log(sortedProducts);
      } else {
        console.error('Failed to fetch sorted products');
      }
    } catch (error) {
      console.error('Error occurred while fetching sorted products:', error);
    }

    // Update the sortBy state with the selected value
    // setSortBy(selectedValue);
  };

  const searchCategory = async (e: string) => {
    const searchVal = e;
  
      try {
        const response = await fetch(`http://localhost:8080/api/product/${searchVal}`);
        if (response.ok) {
          const data = await response.json();
          setFrequentlyBought(false);
          setProducts(data);
          setSearchResults(true);
          setSortResults(false);
          console.log("search products ", JSON.stringify(products));
        } else {
          console.error('Products not found. Status:', response.status);
        }
      } catch (error) {
        console.error('Error:', error);
      }
    };

    const saveCart = async (e: string) => {
      const id = e;
      console.log(id);
      // e.preventDefault();
  
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
    <>
    {/* navigation bar, this includes the search bar */}
    <nav className="top-nav">
      <div className="logo"> <a href='/home'>SuperPrice</a></div>
      <div className="search-bar">
        <form onSubmit={handleSubmit}>
          <input type="text" placeholder="Search for products..." 
          value={searchVal}
          onChange={(e) => setSearch(e.target.value) }/>
          <button type="submit"><img src = "/search.png"></img></button>
        </form>
      </div>

    {/* links to other pages on the website */}
      <ul className="nav-links">
        <li><a href="/help"><img src = "/question_mark.png"></img></a></li>
        <li><a href="/shopping-cart"><img src = "/cart.png"></img></a></li>
        <li><a href="/profile"><img src = "profile.png"></img></a></li>
      </ul>
    </nav>
    
    {showFrequentlyBought ? (
    <>
    <h3> Frequently Bought </h3>
    {/* frequently bought items are displayed here after a user accumulates a purchase
    history with the website
    this is exported from the frequently-bought component found in the frequently 
    bought foldre */}

      <FrequentlyBought></FrequentlyBought>

    {/* home page initially shows the various categories available to browse on the website
    products related to the category are displayed when clicked on */}

    <h3> Browse by category </h3>
    <div className="categories">
      <div className="product-card">
        <img src="fresh_produce.jpg" alt="Fresh Produce" />
        <p className="product-name"><a href="#" onClick={() => { setSearch("Fresh Produce"); searchCategory("Fresh Produce"); }}>Fresh Produce</a></p>
      </div>
      <div className="product-card">
        <img src="dairy_and_eggs.jpg" alt="Dairy & Eggs" />
        <p className="product-name"><a href="#" onClick={() => { setSearch("Dairy and Eggs"); searchCategory("Dairy and Eggs"); }}>Dairy & Eggs</a></p>
      </div>
      <div className="product-card">
        <img src="meat_and_seafood.jpg" alt="Meat & Seafood" />
        <p className="product-name"><a href="#" onClick={() => { setSearch("Meat and Seafood"); searchCategory("Meat and Seafood"); }}>Meat & Seafood</a></p>
      </div>
      <div className="product-card">
        <img src="bakery.jpg" alt="Bakery" />
        <p className="product-name"><a href="#" onClick={() => { setSearch("Bakery"); searchCategory("Bakery"); }}>Bakery</a></p>
      </div>
      <div className="product-card">
        <img src="canned_goods.jpg" alt="Canned Goods" />
        <p className="product-name"><a href="#" onClick={() => { setSearch("Canned Goods"); searchCategory("Canned Goods"); }}>Canned Goods</a></p>
      </div>
      <div className="product-card">
        <img src="frozen_food.jpg" alt="Frozen foods" />
        <p className="product-name"><a href="#" onClick={() => { setSearch("Frozen foods"); searchCategory("Frozen foods"); }}>Frozen foods</a></p>
      </div>
      <div className="product-card">
        <img src="beverages.jpg" alt="Beverages" />
        <p className="product-name"><a href="#" onClick={() => { setSearch("Beverages"); searchCategory("Beverages"); }}>Beverages</a></p>
      </div>
      <div className="product-card">
        <img src="snacks.jpg" alt="Snacks" />
        <p className="product-name"><a href="#" onClick={() => { setSearch("Snacks"); searchCategory("Snacks"); }}>Snacks</a></p>
      </div>
      <div className="product-card">
        <img src="condiments_and_sauces.jpg" alt="Condiments and Sauces" />
        <p className="product-name"><a href="#" onClick={() => { setSearch("Condiments and Sauces"); searchCategory("Condiments and Sauces"); }}>Condiments and Sauces</a></p>
      </div>
      <div className="product-card">
        <img src="household_and_cleaning.jpg" alt="Household and cleaning" />
        <p className="product-name"><a href="#" onClick={() => { setSearch("Household and cleaning"); searchCategory("Household and cleaning"); }}>Household and cleaning</a></p>
      </div>
      <div className="product-card">
        <img src="pet.jpg" alt="Pet" />
        <p className="product-name"><a href="#" onClick={() => { setSearch("Pet"); searchCategory("Pet"); }}>Pet</a></p>
      </div>
    </div>
    </>
    ) : null}
    
    {showSearchResults ? (
    <>
    {/* Displaying search values */}
    <h2> Search Results </h2>
    <select id="searchSortBy" value={sortBy} 
    onChange={(e) => {
      setSortBy(e.target.value);
      // Call the handler with the selected value
      handleSortBy(e.target.value); 
    }} 
    style={{ width: '12%', border: '1px solid black' }}>
      <option value="" disabled hidden>Sort By</option>
      <option value="Low">Low to High Price</option>
      <option value="High">High to Low Price</option>
    </select>
    {products && products.length > 0 ? (
        <ul style={{ display: 'flex', flexWrap: 'wrap', backgroundColor: '#f2f2f2' }}>
          {products.map((product) => (
              <div className='product-card' key={product[0]}>
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
                <button type='submit' onClick={() => { saveCart(product[0]); }}><img src="cart.png" className="cartImg"></img></button>
                <br></br>
              </div>
          ))}
        </ul>
      ) : (
        <p>No products found.</p>
      )}
  </>
  ) : null }

{showSortResults ? (
    <>
    {/* Displaying search values */}
    <h2> Search Results </h2>
    <select id="searchSortBy" value={sortBy} 
    onChange={(e) => {
      setSortBy(e.target.value);
      // Call the handler with the selected value
      handleSortBy(e.target.value); 
    }} 
    // select element to sort search results and compare prices
    style={{ width: '12%', border: '1px solid black' }}>
      <option value="" disabled hidden>Sort By</option>
      <option value="Low">Low to High Price</option>
      <option value="High">High to Low Price</option>
    </select>
    {sortedProducts && sortedProducts.length > 0 ? (
        <ul style={{ display: 'flex', flexWrap: 'wrap', backgroundColor: '#f2f2f2' }}>
          {sortedProducts.map((product) => (
              <div className="product-card" key={product[0]}>
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
                <button type='submit' onClick={() => { saveCart(product[0]); }}><img src="cart.png" className="cartImg"></img></button>
              </div>
          ))}
        </ul>
      ) : (
        <p>No products found.</p>
      )}
  </>
  ) : null }
  </>
)}