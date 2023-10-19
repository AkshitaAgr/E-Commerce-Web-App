package com.SuperPrice.repository;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;

import com.SuperPrice.model.Cart;
import com.SuperPrice.model.CartItems;
import com.SuperPrice.model.CartItemsID;
import com.SuperPrice.model.Product;
import com.SuperPrice.repository.CartItemsRepository;
import com.SuperPrice.service.CartItemsService;
import com.SuperPrice.service.CartService;

@ExtendWith(MockitoExtension.class)
@SpringBootTest
public class ShopingCartRepoTest {

    @Mock
    private CartRepository cartRepository;

    @InjectMocks
    private CartService cartService;

    @Autowired
    private CartItemsRepository cartItemsRepository;


    @Test
    public void testGetCartById() {
        // Mock the data
        int cartId = 123;
        String cartid2 ="123";
        Cart cart = new Cart();
        cart.setCartID(cartId);

        // Mock the repository behavior
        when(cartRepository.findById(cartid2)).thenReturn(Optional.of(cart));

        // Call the service method
        Cart retrievedCart = cartService.getCartById(cartid2);

        // Verify the result
        assertEquals(cartId, retrievedCart.getCartID());
    }

    // @Test
    // @Test
    // void findByUserAndProduct() {
    //     // Create a Cart
    //     Cart cart = new Cart();
    //     cart.setCartID(1);

    //     // Create a Product
    //     Product product = new Product();
    //     product.setProductId("p1");
    //     // ... set other properties for the product

    //     // Create a CartItem
    //     CartItemsID cartItemsID = new CartItemsID();
    //     cartItemsID.setCartID(cart);
    //     cartItemsID.setProduct(product);
    //     CartItems cartItems = new CartItems(); // Assuming quantity is 2
    //     cartItems.setID(cartItemsID);
    //     cartItems.setQuantity(2);


    //     cartItemsRepository.save(cartItems);

    //     // Test the findByUserAndProduct method
    //     CartItems foundCartItem = cartItemsRepository.findByUserAndProduct(cart, product);
    //     assertThat(foundCartItem).isNotNull();
    //     assertThat(foundCartItem.getID().getCartID()).isEqualTo(cart);
    //     assertThat(foundCartItem.getID().getCartID()).isEqualTo(product);
    // }
    
}
