package com.example.springispit.controller;

import com.example.springispit.model.Supplier;
import com.example.springispit.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import java.util.List;

@RestController
@RequestMapping("/suppliers")
public class SupplierController {

    @Autowired
    public SupplierService supplierService;

    @GetMapping("/all")
    public ResponseEntity<List<Supplier>> getAllSuppliers(){
        List<Supplier> supplierList = supplierService.findAllSuppliers();
        return new ResponseEntity<>(supplierList, HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Supplier> addSupplier(@RequestBody Supplier supplier){
        Supplier supplier1 = supplierService.addSupplier(supplier);
        return new ResponseEntity<>(supplier1, HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity<Supplier> updateSupplier(@RequestBody Supplier supplier){
        Supplier updateSupplier = supplierService.updateSupplier(supplier);
        return new ResponseEntity<>(updateSupplier, HttpStatus.CREATED);
    }

    @Transactional
    @DeleteMapping("/delete/{id}")
    public ResponseEntity<?> deleteSupplier(@PathVariable("id") int id){
        supplierService.deleteSupplier(id);
        return new ResponseEntity<>("Deleted!",HttpStatus.CREATED);
    }

    @GetMapping("/find/{id}")
    public ResponseEntity<Supplier> getSupplierById(@PathVariable("id") int id){
        Supplier supplier = supplierService.findSupplierById(id);
        return new ResponseEntity<>(supplier, HttpStatus.OK);
    }

}
