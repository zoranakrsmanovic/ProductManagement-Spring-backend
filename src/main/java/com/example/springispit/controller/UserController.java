package com.example.springispit.controller;

import com.example.springispit.model.User;
import com.example.springispit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    public UserService userService;

    @PostMapping(path = "/login")
    public User loginUser(@RequestBody User user) throws Exception {
        String tempEmail = user.getEmail();
        String tempPassword= user.getPassword();
        User userObj = null;
        if(tempEmail != null && tempPassword != null){
            userObj =userService.fetchUserByEmailAndPassword(tempEmail,tempPassword);
        }
        if(userObj == null){
           throw new Exception("This user does not exists");
        }
        return userObj;

    }
}
