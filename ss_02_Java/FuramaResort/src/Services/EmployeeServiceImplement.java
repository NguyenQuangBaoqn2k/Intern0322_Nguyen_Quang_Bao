package Services;

import models.Employee;
import untils.ReadAndWrite;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

public class EmployeeServiceImplement implements EmployeeService {
    private  static List<Employee>employeesList= new ArrayList<>();
    private static Scanner scanner=new Scanner(System.in);

    private static final String BirthDay_REGEX="";

    @Override
    public void display() {
        employeesList=(List<Employee>)ReadAndWrite.read("C:\\Users\\KimAnh\\IdeaProjects\\FuramaResort\\src\\data\\employee.csv");
        for (Employee employee:employeesList){
            System.out.println(employee.toString());
        }
    }

    @Override
    public void addNew() {
        System.out.println("----vui long nhap thong tin nhan vien----");
        System.out.println("Nhap id: ");
        tryCatch();
        System.out.println("Nhap ten");
        String name=scanner.nextLine();
        System.out.println("nhap ngay sinh: ");
        String birthOfDay= scanner.nextLine();
//        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
//        Date b=new Date();
//        df.setLenient(false); // set false để kiểm tra tính hợp lệ của date. VD: tháng 2 phải có 28-29 ngày, năm có 12 tháng,....
//        try {
//            b=df.parse(birthOfDay); // parse dateString thành kiểu Date
//        }
//        catch (ParseException e) { // quăng lỗi nếu dateString ko hợp lệ
//            System.out.println("Invalid date");
//        }
        System.out.println("nhap gioi tinh");
        String gender= scanner.nextLine();
        System.out.println("so chung minh nhan dan");
        String identityCardNumber=scanner.nextLine();
        System.out.println("nhap so dien thoai");
        String phone=scanner.nextLine();
        System.out.println("nhap email");
        String email=scanner.nextLine();
        System.out.println("nhap cap bac");
        String level=scanner.nextLine();
        System.out.println("nhap vi tri chuc vu");
        String position=scanner.nextLine();
        System.out.println("nhap luong");
        float lasary=tryCachF();
        Employee employee=new Employee(tryCatch(),name,birthOfDay,gender,identityCardNumber,phone,email,level,position,tryCachF());
        employeesList.add(employee);


        try {
            ReadAndWrite.write(employeesList,"C:\\Users\\KimAnh\\IdeaProjects\\FuramaResort\\src\\data\\employee.csv");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void edit() {
        System.out.println("nhap id nhan vien muon sua thong tin");
        int idd=tryCatch();
        int size=employeesList.size();
        for(int i=0; i<size; i++){
            if(employeesList.get(i).getIdEmployee()==idd){
                System.out.println("da tim thay thong tin can sua");
                System.out.println("Nhap id: ");
                int id=tryCatch();
                System.out.println("Nhap ten");
                String name=scanner.nextLine();
                System.out.println("nhap ngay sinh: ");
                String birthOfDay= scanner.nextLine();
                System.out.println("nhap gioi tinh");
                String gender= scanner.nextLine();
                System.out.println("so chung minh nhan dan");
                String identityCardNumber=scanner.nextLine();
                System.out.println("nhap so dien thoai");
                String phone=scanner.nextLine();
                System.out.println("nhap email");
                String email=scanner.nextLine();
                System.out.println("nhap cap bac");
                String level=scanner.nextLine();
                System.out.println("nhap vi tri chuc vu");
                String position=scanner.nextLine();
                System.out.println("nhap luong");
                float lasary=tryCachF();
                Employee employee=new Employee(id,name,birthOfDay,gender,identityCardNumber,phone,email,level,position,lasary);
                employeesList.set(idd-1,employee);
            }
        }

    }

    @Override
    public void delete() {

    }

    @Override
    public int tryCatch() {
        int choice=0;
        boolean check=true;
        do {
            try {
                choice = Integer.parseInt(scanner.nextLine());
                check=false;
            } catch (NumberFormatException e) {
                System.out.println("ban phai nhap kieu so");
                check=true;
            }
        }while (check);
        return choice;
    }
    public  static float tryCachF(){
        float choice=0;
        boolean check=true;
        do {
            try {
                choice = Float.parseFloat(scanner.nextLine());
                check=false;
            } catch (NumberFormatException e) {
                System.out.println("ban phai nhap kieu so");
                check=true;
            }
        }while (check);
        return choice;
    }
}
