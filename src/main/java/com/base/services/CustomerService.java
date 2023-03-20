package com.base.services;

import com.base.entitys.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();
    void saveOrUpdate(Customer customer);
    Customer getCustomer(int id);
    void delete(int id);
}
