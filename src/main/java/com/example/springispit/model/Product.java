package com.example.springispit.model;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name="product")
@Setter
@Getter
@ToString
public class Product  {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="product_id")
    private int id;

    @Column(name="product_name")
    private String product_name;

    @Column(name="description")
    private String description;

    @Column(name="price")
    private double price;

    @Column(name="units_in_stock")
    private int units_in_stock;

    @Column(name="country")
    private String country;

    @Column(name="product_image")
    private String product_image;

    @Column(name="merchandiser")
    private String merchandiser;

    @Column(name="code")
    private String code;

    @Column(name="dimensions")
    private String dimensions;

    @Column(name="places")
    private String places;


    @ManyToMany(mappedBy = "supplierProduct")
    Set<Supplier> suppliers;



}
