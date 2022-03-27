package Services;

import models.Customer;
import models.Employee;

import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

public class CustomerServiceImplement implements CustomerService {
    private  static List<Customer>customerList= new LinkedList<>();
    private static Scanner scanner=new Scanner(System.in);
    @Override
    public void display() {
        for (Customer customer:customerList){
            System.out.println(customer.toString());
        }
    }

    @Override
    public void addNew() {
        System.out.println("----vui long nhap thong tin khach hang-----");
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
        System.out.println("loai khach hang");
        String typeOfGuest=scanner.nextLine();
        System.out.println("dia chi");
        String address=scanner.nextLine();

        Customer customer=new Customer(tryCatch(),name,birthOfDay,gender,identityCardNumber,phone,email,typeOfGuest,address);
        customerList.add(customer);

    }

    @Override
    public void edit() {
        System.out.println("nhap id khach hang muon sua thong tin");
        int idd = tryCatch();
        int size = customerList.size();
        for (int i = 0; i < size; i++) {
            if (customerList.get(i).getIdEmployee() == idd) {
                System.out.println("da tim thay thong tin can sua");
                System.out.println("Nhap id: ");
                tryCatch();
                System.out.println("Nhap ten");
                String name = scanner.nextLine();
                System.out.println("nhap ngay sinh: ");
                String birthOfDay = scanner.nextLine();
                System.out.println("nhap gioi tinh");
                String gender = scanner.nextLine();
                System.out.println("so chung minh nhan dan");
                String identityCardNumber = scanner.nextLine();
                System.out.println("nhap so dien thoai");
                String phone = scanner.nextLine();
                System.out.println("nhap email");
                String email = scanner.nextLine();
                System.out.println("loai khach hang");
                String typeofgues = scanner.nextLine();
                System.out.println("dia chi");
                String address = scanner.nextLine();
                Customer customer = new Customer(tryCatch(), name, birthOfDay, gender, identityCardNumber, phone, email, typeofgues, address);
                customerList.set(idd - 1, customer);

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
}
