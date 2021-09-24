package com.example.springispit.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;



import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name="supplier")
@Setter
@Getter
@ToString
public class Supplier {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="supplier_id")
    private int id;

    @Column(name="company_name")
    private String companyName;

    @Column(name="status")
    private String status;

    @Column(name="bill")
    private String bill;

    @Column(name="phone_number")
    private String phoneNumber;

    @Column(name="email")
    private String email;

    @ManyToMany
    @JoinTable(
            name = "supplier_product",
            joinColumns = @JoinColumn(name = "supplier_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id"))
    Set<Product> supplierProduct;
}
