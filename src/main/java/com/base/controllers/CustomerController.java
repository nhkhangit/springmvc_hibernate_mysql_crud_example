package com.base.controllers;

import com.base.entitys.Customer;
import com.base.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    private final CustomerService customerService;

    @Autowired
    public CustomerController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping("/list")
    public String listCustomer(Model model){
        // if record not available in database then getCustomers() given an error
        try{
            List<Customer> customers = customerService.getCustomers();
            model.addAttribute("customers", customers);
        }catch (Exception e){
            model.addAttribute("customers", null);
        }
        return "customers-list";
    }

    @GetMapping("/show-customer-form")
    public String showCustomerForm(Model model){
        model.addAttribute("customer", new Customer());
        return "customer-form";
    }

    @GetMapping("/update-form")
    public String updateCustomerForm(@RequestParam("id")int id,Model model){
        model.addAttribute("customer", customerService.getCustomer(id));
        return "customer-form";
    }

    @PostMapping("/save")
    public String saveCustomer(@ModelAttribute("customer") Customer customer){
        customerService.saveOrUpdate(customer);
        return "redirect:/customer/list";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("id") int id){
        customerService.delete(id);
        return "redirect:/customer/list";
    }
}