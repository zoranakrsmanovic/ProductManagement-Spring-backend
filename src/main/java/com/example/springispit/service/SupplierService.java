package com.example.springispit.service;

import com.example.springispit.model.Supplier;
import com.example.springispit.repository.SupplierRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SupplierService {
    @Autowired
    SupplierRepository supplierRepository;

    public Supplier addSupplier(Supplier supplier){
        return supplierRepository.save(supplier);
    }

    public List<Supplier> findAllSuppliers(){
        return supplierRepository.findAll();
    }

    public Supplier updateSupplier(Supplier supplier){
        return supplierRepository.save(supplier);
    }

    public Supplier findSupplierById(Integer id){
        return supplierRepository.findSupplierById(id);
    }

    public void deleteSupplier(Integer id){
        supplierRepository.deleteSupplierById(id);
    }


}
