package models;

import java.util.Date;

public class Employee extends Person {
    private String level;
    private String position;
    private float salary;

    public Employee(int id, String name, String birthOfDay, String gender, String identityCardNumber, String phone, String email, String level, String position, float salary) {
        super(id, name, birthOfDay, gender, identityCardNumber, phone, email);
        this.level = level;
        this.position = position;
        this.salary = salary;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "Employee{" + super.toString() +
                "level='" + level + '\'' +
                ", position='" + position + '\'' +
                ", salary=" + salary +

                '}';
    }
}
