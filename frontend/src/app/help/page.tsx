'use client'
import React, { useState } from 'react';
import './help.css';

import Header from "../header"

const Faq: React.FC = () => {
  const faqData = [
    {
      question: 'How to use SuperPrice?',
      answer: 'SuperPrice is a platform that offers competitive pricing for a wide range of products and services. You can search for an item and compare the prices using the filters.',
    },
    {
      question: 'How to view your profile?',
      answer: 'To view your profile, log in to your account and click on the profile icon. You can view your profile there.',
    },
    {
      question: 'How to view products in my shopping cart?',
      answer: 'To view products in your cart, simply click on the cart icon in the header and it will show you the items you have.',
    },
    {
      question: 'How to add products?',
      answer: 'To add products to your cart, browse our catalog and click the cart icon on the product page.',
    },
  ];

  // State to keep track of which FAQs are open
  const [openFaqs, setOpenFaqs] = useState<number[]>([]);

  const toggleFaq = (index: number) => {
    if (openFaqs.includes(index)) {
      setOpenFaqs(openFaqs.filter((item) => item !== index));
    } else {
      setOpenFaqs([...openFaqs, index]);
    }
  };

  return (
    <>
    <Header></Header>
    
    <div className="faq-container">
        <div className="faq-header">
      <h1>FAQs</h1>
      </div>
      <p>Click on any one of these below to find out more about how to use our webapp</p>
      <ul>
        {faqData.map((item, index) => (
          <li key={index}>
            <div
              className={`faq-question ${openFaqs.includes(index) ? 'open' : ''}`}
              onClick={() => toggleFaq(index)}
            >
              <br></br>
              {item.question}
            </div>
            {openFaqs.includes(index) && <div className="faq-answer">{item.answer}</div>}
          </li>
        ))}
      </ul>
    </div>
    </>
  );
};

export default Faq;
