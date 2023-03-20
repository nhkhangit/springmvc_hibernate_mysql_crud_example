package com.base.daos;

import com.base.entitys.Customer;

import java.util.List;

public interface CustomerDAO {
    List<Customer> getCustomers();
    void saveOrUpdate(Customer customer);
    Customer getCustomer(int id);
    void delete(int id);
}
