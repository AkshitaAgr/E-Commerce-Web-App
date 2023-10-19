package com.SuperPrice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SuperPrice.model.Cart;
import com.SuperPrice.repository.CartRepository;

@Service
public class CartService {
    @Autowired
    private CartRepository cartRepository;

    //saving a cart
    public Cart saveCart(Cart cart){
        return cartRepository.save(cart);
    }

    //service to get cart by id
    public Cart getCartById(String cartId) {
        return cartRepository.findById(cartId).orElse(null);
    }
}
