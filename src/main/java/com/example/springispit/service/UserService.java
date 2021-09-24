package com.example.springispit.service;

import com.example.springispit.model.User;
import com.example.springispit.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    public UserRepository userRepository;

    public User fetchUserByEmailAndPassword(String email, String password){
        return userRepository.findByEmailAndPassword(email,password);
    }
}
