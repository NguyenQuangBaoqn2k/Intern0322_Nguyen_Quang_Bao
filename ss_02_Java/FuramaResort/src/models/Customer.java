package models;

import java.util.Date;

public class Customer extends Person {
    private String typeOfGuest;
    private String address;

    public Customer(int id, String name, String birthOfDay, String gender, String identityCardNumber, String phone, String email, String typeOfGuest, String address) {
        super(id, name, birthOfDay, gender, identityCardNumber, phone, email);
        this.typeOfGuest = typeOfGuest;
        this.address = address;
    }

    public String getTypeOfGuest() {
        return typeOfGuest;
    }

    public void setTypeOfGuest(String typeOfGuest) {
        this.typeOfGuest = typeOfGuest;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Customer{" +super.toString()+
                "typeOfGuest='" + typeOfGuest + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
