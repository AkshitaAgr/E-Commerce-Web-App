'use client'
import img from 'next/image'
import React , { useState } from 'react'
import { flattenDiagnosticMessageText } from 'typescript';

/*
 * this code is integrated into the home page now.
 * initially, we thought of breaking up this code into two pages, but quickly 
 * realised that this would not be the best way to go about it due to lots of
 * code being duplicated. this code is not used in the application anymore,
 * but we are keeping it here to document our progress. 
 */

export default function productList() {
  const [searchVal, setSearch] = useState('');
  const [products, setProducts] = useState([]);
  const [showProductList, setShowProductList] = useState(true);
  const [showSearchResults, setSearchResults] = useState(false);
  const [sortBy, setSortBy] = useState('');



  const handleSubmit = async (e: React.FormEvent) => {
  e.preventDefault();

    try {
      const response = await fetch(process.env.API_URL + 'api/product/' + searchVal);
      if (response.ok) {
        const data = await response.json();
        setProducts(data);
        setShowProductList(false);
        setSearchResults(true);
        console.log("search products ", JSON.stringify(products));
      } else {
        console.error('Products not found. Status:', response.status);
      }
    } catch (error) {
      console.error('Error:', error);
    }
  };

  return (
    <>
    <nav className="top-nav">
      <div className="logo">SuperPrice</div>
      <div className="search-bar">
        <form onSubmit={handleSubmit}>
          <input type="text" placeholder="Search for products..." 
          value={searchVal}
          onChange={(e) => setSearch(e.target.value) }/>
          <button type="submit"><img src = "/search.png"></img></button>
        </form>
      </div>
      <ul className="nav-links">
        <li><a href="#"><img src = "/cart.png"></img></a></li>
        <li><a href="#"><img src = "/notifications.png"></img></a></li>
        <li><a href="profile"><img src = "profile.png"></img></a></li>


      </ul>
    </nav>
    {/* this is a placeholder for the product list with dummy products from 
    various categories. it is all hardcoded, but eventually we will have 
    these values coming from the database. */}
    {showProductList ? (
    <>
    <h3> Product List </h3>
    <select id="sortBy" value={sortBy} onChange={e => setSortBy(e.target.value)} style={{ width: '12%', border: '1px solid black' }}>
      <option value="" disabled hidden>Sort By</option>
      <option value="Low">Low to High Price</option>
      <option value="High">High to Low Price</option>
    </select>
    <div className="frequent">
      <div className="product-card">
        <img src="/avacado.jpg" alt="Avacado" />
        <p className="product-name"><a href="#">Avacado</a></p>
      </div>
      <div className="product-card">
        <img src="banana.jpg" alt="Banana" />
        <p className="product-name"><a href="#">Banana</a></p>
      </div>
      <div className="product-card">
        <img src="blueberries.jpg" alt="Blueberries" />
        <p className="product-name"><a href="#">Blueberries</a></p>
      </div>
      <div className="product-card">
        <img src="broccoli.jpg" alt="Broccoli" />
        <p className="product-name"><a href="#">Broccoli</a></p>
      </div>
      <div className="product-card">
        <img src="carrots.jpg" alt="Carrot" />
        <p className="product-name"><a href="#">Carrot</a></p>
      </div>
      <div className="product-card">
        <img src="eggplant.jpg" alt="Eggplant" />
        <p className="product-name"><a href="#">Eggplant</a></p>
      </div>
      <div className="product-card">
        <img src="Organic Gala Apples.jpg" alt="Organic Gala Apples" />
        <p className="product-name"><a href="#">Organic Gala Apples</a></p>
      </div>
      <div className="product-card">
        <img src="green_grapes.jpg" alt="Green Grapes" />
        <p className="product-name"><a href="#">Green Grapes</a></p>
      </div>
      <div className="product-card">
        <img src="honeydew_melon.jpg" alt="Honeydew Melon" />
        <p className="product-name"><a href="#">Honeydew Melon</a></p>
      </div>
      <div className="product-card">
        <img src="jalapenos.jpg" alt="Jalapenos" />
        <p className="product-name"><a href="#">Jalapenos</a></p>
      </div>
      <div className="product-card">
        <img src="lemons.jpg" alt="Lemons" />
        <p className="product-name"><a href="#">Lemons</a></p>
      </div>
      <div className="product-card">
        <img src="strawberries.jpg" alt="Strawberry" />
        <p className="product-name"><a href="#">Strawberry</a></p>
      </div>
      <div className="product-card">
        <img src="pineapple.jpg" alt="Pineapple" />
        <p className="product-name"><a href="#">Pineapple</a></p>
      </div>
      <div className="product-card">
        <img src="red_bell_pepper.jpg" alt="Red Bell Pepper" />
        <p className="product-name"><a href="#">Red Bell Pepper</a></p>
      </div>
      <div className="product-card">
        <img src="romaine_lettuce.jpg" alt="Romaine Lettuce" />
        <p className="product-name"><a href="#">Romaine Lettuce</a></p>
      </div>
      <div className="product-card">
        <img src="spinach.jpg" alt="Spinach" />
        <p className="product-name"><a href="#">Spinach</a></p>
      </div>
      <div className="product-card">
        <img src="vine_ripened_tomatoes.jpg" alt="Vine Ripened Tomatoes" />
        <p className="product-name"><a href="#">Vine Ripened Tomatoes</a></p>
      </div>
    </div>
    </>
    ) : null}
    
    {showSearchResults ? (
    <>
    {/* Display search values */}
    <h2> Search Results </h2>
    <select id="searchSortBy" value={sortBy} onChange={e => setSortBy(e.target.value)} style={{ width: '12%', border: '1px solid black' }}>
      <option value="" disabled hidden>Sort By</option>
      <option value="Low">Low to High Price</option>
      <option value="High">High to Low Price</option>
    </select>
    {products && products.length > 0 ? (
        <ul style={{ display: 'flex', flexWrap: 'wrap', backgroundColor: '#f2f2f2' }}>
          {products.map((product) => (
              <div className="product-card" key={product[0]}>
                <img src={`${product[1]}.jpg`} alt={product[1]} />
                <p className="product-name"><a href="#">{product[1]}</a></p>
                <p>{product[2]} {product[3]}</p>
              </div>
          ))}
        </ul>
      ) : (
        <p>No products found.</p>
      )}
  </>
  ) : null };
  </>
  
)};
