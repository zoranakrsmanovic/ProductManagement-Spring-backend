package com.example.springispit.repository;


import com.example.springispit.model.Supplier;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SupplierRepository extends CrudRepository<Supplier, Integer> {
    void deleteSupplierById(Integer id);
    Supplier findSupplierById(Integer id);
    List<Supplier> findAll();

}
