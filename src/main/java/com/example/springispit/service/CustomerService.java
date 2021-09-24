package com.example.springispit.service;

import com.example.springispit.model.Customer;
import com.example.springispit.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService {
    @Autowired
    private CustomerRepository customerRepository;

    public Customer addCustomer(Customer customer)  {

        return customerRepository.save(customer);
    }

    public List<Customer> findAllCustomers(){
        return customerRepository.findAll();
    }

    public Customer updateCustomer(Customer customer){
        return customerRepository.save(customer);
    }

    public void deleteCustomer(Integer id){
        customerRepository.deleteCustomerById(id);
    }

    public Customer findCustomerById(Integer id){
        return customerRepository.findCustomerById(id);
    }

}
