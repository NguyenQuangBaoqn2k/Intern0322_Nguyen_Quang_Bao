package service;

import model.Customer;
import repository.CustomerRepository;

import java.util.List;

public class CustomerListImpl implements CustomerService {
    CustomerRepository customerRepository = new CustomerRepository();
    @Override
    public List<Customer> getCustomerList() {
        return customerRepository.getCustomerList();
    }

    @Override
    public void createCustomer(Customer customer) {
        customerRepository.createCustomer(customer);
    }

    @Override
    public void deleteCustomer(int id ) {
        customerRepository.deleteCustomer(id);
    }

    @Override
    public void updateCustomer(Customer customer) {
        customerRepository.updateCustomer(customer);
    }

    @Override
    public Customer selectCustomer(int id) {
     return customerRepository.selectCustomer(id);
    }


}
