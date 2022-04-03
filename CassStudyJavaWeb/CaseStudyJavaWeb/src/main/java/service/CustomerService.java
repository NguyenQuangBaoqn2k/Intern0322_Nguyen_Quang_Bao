package service;

import model.Customer;

import java.util.List;

public interface CustomerService {
    public List<Customer>getCustomerList();
    public void createCustomer(Customer customer);
    public void deleteCustomer(int id);
    public void updateCustomer(Customer customer);
    public Customer selectCustomer(int id);
}
