package com.SuperPrice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SuperPrice.model.CartItems;
import com.SuperPrice.model.CartItemsID;
import com.SuperPrice.repository.CartItemsRepository;

@Service
public class CartItemsService {
    @Autowired
    private CartItemsRepository cartItemsRepository;

    //function to retrieve a list of all cart items from the repository
    public List<CartItems> getAllCartItems(){
        return cartItemsRepository.findAll();
    }

    //function to find a cart item by ID from the repository
    public CartItems getCartItemById(CartItemsID compositeID){
        return cartItemsRepository.findById(compositeID).orElse(null);
    }

    //function to save a cart item to the repository
    public CartItems saveCartItems(CartItems cartitems){
        return cartItemsRepository.save(cartitems);
    }

    //function to return cart items by id
    public List<Object[]> cartItemsByID(String cartId) {
        return cartItemsRepository.allCartItemsByCartID(cartId);
    }

    //function to delete a cart item from the repository using the ID
    public void deleteCartItemByID(CartItemsID cartItemsID){
        cartItemsRepository.deleteById(cartItemsID);
    }
}
