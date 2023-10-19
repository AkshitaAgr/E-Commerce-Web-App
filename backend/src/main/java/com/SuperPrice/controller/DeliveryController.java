// package com.SuperPrice.controller;

// import java.util.List;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.http.ResponseEntity;
// import org.springframework.web.bind.annotation.CrossOrigin;
// import org.springframework.web.bind.annotation.DeleteMapping;
// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.RequestBody;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RestController;

// import com.SuperPrice.model.Delivery;
// import com.SuperPrice.service.DeliveryService;

// @RestController
// @CrossOrigin(origins = "http://localhost:3000")
// // @RequestMapping("/api/users")
// public class DeliveryController {
//     @Autowired
//     private DeliveryService userService;

//     // @GetMapping
//     // public List<User> getAllUsers() {
//     //     return userService.getAllUsers();
//     // }

//     // @GetMapping("/{userid}")
//     // public User getUserById(@PathVariable String userid) {
//     //     return userService.getUserById(userid);
//     // }

//     // @CrossOrigin(origins = "http://localhost:3000")
//     // @GetMapping("/api/users")
//     @PostMapping("/api/users")
//     public ResponseEntity<Delivery> addUser(@RequestBody Delivery user) {
//         // System.out.println("Saving user in controller");
//         // System.out.println("Firstname " + user.getFname());
//         Delivery savedUser = userService.Save(user);
//         return ResponseEntity.ok(savedUser);
//     }

//     // @DeleteMapping("/{userid}")
//     // public void deleteUser(@PathVariable String userid) {
//     //     userService.deleteUser(userid);
//     // }
// }
