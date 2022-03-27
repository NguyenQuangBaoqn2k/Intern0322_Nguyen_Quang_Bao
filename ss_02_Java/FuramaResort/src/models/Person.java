package models;

import java.util.Date;

public abstract class Person {
    private int id;
    private String name;
    private String birthOfDay;
    private String gender;
    private String identityCardNumber;
    private String phone;
    private String email;

    public Person(int id, String name, String birthOfDay, String gender, String identityCardNumber, String phone, String email) {
        this.id = id;
        this.name = name;
        this.birthOfDay = birthOfDay;
        this.gender = gender;
        this.identityCardNumber = identityCardNumber;
        this.phone = phone;
        this.email = email;
    }

    public int getIdEmployee() {
        return id;
    }

    public void setIdEmployee(int idEmployee) {
        this.id = idEmployee;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthOfDay() {
        return birthOfDay;
    }

    public void setBirthOfDay(String birthOfDay) {
        this.birthOfDay = birthOfDay;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getIdentityCardNumber() {
        return identityCardNumber;
    }

    public void setIdentityCardNumber(String identityCardNumber) {
        this.identityCardNumber = identityCardNumber;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", birthOfDay='" + birthOfDay + '\'' +
                ", gender='" + gender + '\'' +
                ", identityCardNumber='" + identityCardNumber + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' ;
    }
}
