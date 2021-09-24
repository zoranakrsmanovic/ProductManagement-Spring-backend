package com.example.springispit.repository;

import com.example.springispit.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
    void deleteProductById(Integer id);
    Product findProductById(Integer id);


}
