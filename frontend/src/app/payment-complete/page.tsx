import React from 'react'
import './page.css'

export default function PaymentComplete() {
    return(
        <main>
            <br></br>
            {/* Displaying to the user that the payment has been completed */}
            <h2 className='text'> Payment is complete. Thank you for shopping at SuperPrice! </h2>
            <br></br>
            {/* Creating a button to take the user back to the home page */}
            <button className='button'> <a href='/home'> Go back to home page </a> </button>
        </main>
    )
}