package com.SuperPrice.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.HttpStatus;

import com.SuperPrice.model.CartItems;
import com.SuperPrice.model.CartItemsID;
import com.SuperPrice.model.Product;
import com.SuperPrice.model.Cart;
import com.SuperPrice.service.CartItemsService;
import com.SuperPrice.repository.ProductRepository;
import com.SuperPrice.repository.CartItemsRepository;
import com.SuperPrice.repository.CartRepository;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class CartItemsController {
    @Autowired
    private CartItemsService cartItemsService;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private CartRepository cartRepository;
    @Autowired
    private CartItemsRepository cartItemsRepository;

    //constructing a new instance of CartItemsController with the provided CartItemsService
    @Autowired
    public CartItemsController(CartItemsService service){
        this.cartItemsService = service;
    }

    //function to handle the task of fetching all cart items
    @GetMapping("/api/cartitems")
    public List<CartItems> getAllItems() {
        return cartItemsService.getAllCartItems();
    }

    //function to handle the task of saving a cart item
    @PostMapping("/api/savecartitems/{id}")
    public ResponseEntity<?> savCartItems(@PathVariable String id, @RequestBody Map<String, String> item){
        try {
            //making product and cart objects
            Product product = productRepository.getProductById(id);
            Cart cart = cartRepository.getCartById(item.get("CARTID"));

            //creating the id for the cart item
            CartItemsID cartitemsid = new CartItemsID();
            cartitemsid.setCartID(cart);
            cartitemsid.setProduct(product);

            //setting the id
            CartItems cartItem = new CartItems();
            cartItem.setID(cartitemsid);

            //finding if an item already exists in the cart
            CartItems existingItem = cartItemsRepository.findByCartAndProduct(cart, product);

            if (existingItem != null){
                //if the item exists, update the quantity
                cartItem.setQuantity(existingItem.getQuantity() + 1);
            }
            else{
                //if the item doesn't exist add the given quantity
                cartItem.setQuantity(Integer.parseInt(item.get("QUANTITY")));
            }
            //save the item
            cartItemsService.saveCartItems(cartItem);
            return ResponseEntity.ok("Cart data saved successfully.");
        } catch (Exception ex) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to save cart data.");
        }
    }

    //function to get a cart item by id
    @GetMapping("/api/cartitems/{cartId}")
    public List<Object[]> getCartItemsById(@PathVariable String cartId) {
        return cartItemsService.cartItemsByID(cartId);
    }

    //function to handle the task of deleting a cart item by ID
    @DeleteMapping("api/cartitems/{id}")
    public ResponseEntity<HttpStatus> deleteCartItemByID(@RequestParam CartItemsID id){
        cartItemsService.deleteCartItemByID(id);
        return new ResponseEntity<HttpStatus>(HttpStatus.ACCEPTED);
    }
}
