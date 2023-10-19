import img from 'next/image'
import React from 'react'
import "./header.css"

export default function Header() {
    return (
      <main>
        <nav className="top-nav">
        <div className="logo"> <a href='/home'>SuperPrice</a></div>
        <ul className="nav-links">
          <li><a href="/help"><img src = "/question_mark.png"></img></a></li>
          <li><a href="/shopping-cart"><img src = "/cart.png"></img></a></li>
          <li><a href="/profile"><img src = "/profile.png"></img></a></li>
        </ul>
      </nav>
    </main>
  )
}