package com.SuperPrice.controller;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import org.junit.jupiter.api.BeforeEach;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.mockito.Mockito.*;

import org.springframework.beans.factory.annotation.Autowired;
import javax.sql.DataSource;

import com.SuperPrice.SuperPriceApplication;
import com.SuperPrice.controller.CartItemsController;
import com.SuperPrice.model.Cart;
import com.SuperPrice.model.CartItems;
import com.SuperPrice.model.CartItemsID;
import com.SuperPrice.model.Product;
import com.SuperPrice.repository.ProductRepository;
import com.SuperPrice.service.CartItemsService;

@SpringBootTest
// @SpringBootTest(classes = SuperPriceApplication.class)
public class ShoppingCartTests {
    @Autowired
    private CartItemsService service;
    @Autowired
    private CartItemsController controller;
    @Autowired
    private ProductRepository productRepository;

    //function called before each test to initialize dependencies
	@BeforeEach
    void setUp() {
        this.service = mock(CartItemsService.class);
    	this.controller = new CartItemsController(this.service);
    }

    //testing the service & controller to ensure an empty list is returned when no items are available
	@Test
    void getAllItems_should_returnEmpty_when_noItems() {
        when(this.service.getAllCartItems()).thenReturn(new ArrayList<>());
        assertEquals(0, this.controller.getAllItems().size());
    }

    //testing the service & controller to ensure a list of items is returned when available in the service
	@Test
    void getAllItems_should_returnItems_when_availableInService() {
        Cart cart = new Cart();
        cart.setCartID(1);
        Product product = productRepository.getProductById("p01");
        CartItemsID id = new CartItemsID();
        id.setCartID(cart);
        id.setProduct(product);
        CartItems item = new CartItems();
        item.setID(id);
        item.setQuantity(3);
        when(this.service.getAllCartItems())
            .thenReturn(List.of(item));
        assertEquals(1, this.controller.getAllItems().size());
    }

    //testing the service & controller to ensure that the correct item was found by id
	@Test
    void getItemByID_should_returnItemDetails_when_available() {
        Cart cart = new Cart();
        cart.setCartID(1);
        Product product = productRepository.getProductById("p01");
        CartItemsID id = new CartItemsID();
        id.setCartID(cart);
        id.setProduct(product);
        CartItems item = new CartItems();
        item.setID(id);
        item.setQuantity(3);
        when(this.service.getCartItemById(id))
            .thenReturn(item);
        // CartItems item2 = this.controller.getItemByID(new CartItemsID("1", "p01"));
        // assertNotNull(item2);
        // assertEquals(3, item2.getQuantity());
    }

    //testing the service & controller to ensure that the service was called to save an item
	// @Test
	// void saveCartItems_shouldCall_saveCartItemsService_when_item_does_not_exist() {
	// 	// CartItems item = new CartItems("1", "p01", 3);
    //     Cart cart = new Cart();
    //     cart.setCartID(1);
    //     Product product = productRepository.getProductById("p01");
    //     CartItemsID id = new CartItemsID();
    //     id.setCartID(cart);
    //     id.setProduct(product);
    //     CartItems item = new CartItems();
    //     item.setID(id);
    //     item.setQuantity(3);
	// 	// this.controller.saveCartItems(item);
	// 	verify(this.service, times(1)).saveCartItems(item);
	// }

    //testing the service & controller to ensure that the service was called to delete an item
	@Test
    void deleteItemByID_should_callDeleteService() {
        Cart cart = new Cart();
        cart.setCartID(1);
        Product product = productRepository.getProductById("p01");
        CartItemsID id = new CartItemsID();
        id.setCartID(cart);
        id.setProduct(product);
        CartItems item = new CartItems();
        item.setID(id);
        item.setQuantity(3);
        // this.controller.deleteCartItemByID(new CartItemsID("1", "p01"));
        this.controller.deleteCartItemByID(id);
        verify(this.service, times(1)).deleteCartItemByID(id);
    }
}
