package com.SuperPrice.repository;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import com.SuperPrice.model.User;
import com.SuperPrice.repository.UserRepository;

@DataJpaTest
public class UserRepositoryTests {

    @MockBean
    private UserRepository userRepository;

    // @Test
    // public void testFindByEMAIL_ADDRESS() {
    //     // Arrange
    //     String email = "test@example.com";
    //     User user = new User();
    //     user.setEmail(email);

    //     when(userRepository.findByEMAIL_ADDRESS(email)).thenReturn(user);

    //     // Act
    //     User foundUser = userRepository.findByEMAIL_ADDRESS(email);

    //     // Assert
    //     assertEquals(email, foundUser.getEmail());
    // }
    @Test
public void testFindByEMAIL_ADDRESS() {
    // Arrange
    String email = "test@example.com";
    User user = new User();
    user.setEmail(email); // Use setEmailAddress to set the email address

    when(userRepository.findByEMAIL_ADDRESS(email)).thenReturn(user);

    // Act
    User foundUser = userRepository.findByEMAIL_ADDRESS(email);

    // Assert
    assertEquals(email, foundUser.getEmail()); // Use getEmailAddress to get the email address
}


    // You can write similar test methods for other repository methods as needed.
}