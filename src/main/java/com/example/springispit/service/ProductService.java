package com.example.springispit.service;


import com.example.springispit.model.Product;

import com.example.springispit.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;


    public Product addProduct(Product product){
        return productRepository.save(product);
    }

    public List<Product> findAllProducts(){
        return productRepository.findAll();
    }

    public Product updateProduct(Product product){
        return productRepository.save(product);
    }

    public Product findProductById(Integer id){
        return productRepository.findProductById(id);
    }

    public void deleteProduct(Integer id){
        productRepository.deleteProductById(id);
    }


}
