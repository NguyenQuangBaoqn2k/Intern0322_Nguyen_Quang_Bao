package repository;

import model.Customer;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository {
    private static List<Customer> customerList=new ArrayList<>();
    private connectionDatabase connectionDatabase=new connectionDatabase();

    public List<Customer>getCustomerList() {

        List<Customer> customerList = new ArrayList<>();
        try {
           PreparedStatement preparedStatement = this.connectionDatabase
                   .getConnection()
                   .prepareStatement("select * from khach_hang");
            Customer customer;
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_khach_hang");
                String name = resultSet.getString("ho_ten");
                String birth = resultSet.getString("ngay_sinh");
                Integer gender = resultSet.getInt("gioi_tinh");
                String idcard = resultSet.getString("so_cmnd");
                String phone = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String diachi = resultSet.getString("diachi");
                customer=new Customer(id,name,birth,gender,idcard,phone,email,diachi);
                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }
    public void createCustomer(Customer customer){

        try {
          PreparedStatement   preparedStatement = this.connectionDatabase
                    .getConnection()
                  .prepareStatement("insert into khach_hang(ma_khach_hang,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,diachi) value (?,?,?,?,?,?,?,?)");
            preparedStatement.setInt(1,customer.getId());
            preparedStatement.setString(2,customer.getEmployeeName());
            preparedStatement.setString(3,customer.getEmployeeBirthday());
            preparedStatement.setInt(4,customer.getGender());
            preparedStatement.setString(5,customer.getEmployeeCard());
            preparedStatement.setString(6,customer.getEmployeePhone());
            preparedStatement.setString(7,customer.getEmployeeEmail());
            preparedStatement.setString(8,customer.getAddress());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void deleteCustomer(int id){
        try {
            PreparedStatement preparedStatement=this.connectionDatabase
                    .getConnection()
                    .prepareStatement("delete from khach_hang where ma_khach_hang=?");
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateCustomer(Customer customer) {
        try {
            PreparedStatement   preparedStatement = this.connectionDatabase
                    .getConnection()
                    .prepareStatement("update khach_hang set ho_ten=?,ngay_sinh=?,gioi_tinh=?,so_cmnd=?,so_dien_thoai=?,email=?,diachi=? where ma_khach_hang=?");
            preparedStatement.setString(1,customer.getEmployeeName());
            preparedStatement.setString(2,customer.getEmployeeBirthday());
            preparedStatement.setInt(3,customer.getGender());
            preparedStatement.setString(4,customer.getEmployeeCard());
            preparedStatement.setString(5,customer.getEmployeePhone());
            preparedStatement.setString(6,customer.getEmployeeEmail());
            preparedStatement.setString(7,customer.getAddress());
            preparedStatement.setInt(8,customer.getId());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public Customer selectCustomer(int id) {
        Customer customer = null;
        PreparedStatement preparedStatement= null;
        try {
            preparedStatement = this.connectionDatabase.getConnection()
                    .prepareStatement("SELECT * from khach_hang where ma_khach_hang=?");


            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idd = resultSet.getInt("ma_khach_hang");
                String name = resultSet.getString("ho_ten");
                String birth = resultSet.getString("ngay_sinh");
                Integer gender = resultSet.getInt("gioi_tinh");
                String idcard = resultSet.getString("so_cmnd");
                String phone = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String diachi = resultSet.getString("diachi");
                customer=new Customer(idd,name,birth,gender,idcard,phone,email,diachi);
              
            }
        }
            catch (SQLException e){
        e.printStackTrace();
        }
        return customer;
    }
}