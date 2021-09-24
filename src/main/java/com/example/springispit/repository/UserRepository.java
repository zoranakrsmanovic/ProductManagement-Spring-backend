package com.example.springispit.repository;

import com.example.springispit.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
    public User findByEmailAndPassword(String email,String password);
}
