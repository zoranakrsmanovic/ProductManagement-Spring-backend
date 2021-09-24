package com.example.springispit.repository;

import com.example.springispit.model.Customer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, Integer> {
    List<Customer> findAll();
    void deleteCustomerById (Integer id);
   Customer findCustomerById(Integer id);

}
