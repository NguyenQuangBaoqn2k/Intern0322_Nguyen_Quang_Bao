package controllers;

import Services.CustomerServiceImplement;
import Services.EmployeeService;
import Services.EmployeeServiceImplement;
import Services.FacilityServiceImplement;

import java.util.Random;
import java.util.Scanner;

public class FuramaController {
    public static void main(String[] args) {
        displayMainMenu();
    }
    public static void displayMainMenu() {
        System.out.println("------ User choose menu ------");
        boolean check = true;
        while (check) {
            System.out.println("1.Employee Management");
            System.out.println("2.Customer Management");
            System.out.println("3.Facility Management");
            System.out.println("4.Booking Management");
            System.out.println("5.Promotion Management");
            System.out.println("6.Exit\n");
            switch (tryCatch()) {
                case 1: displayEmployeeManagement(); break;
                case 2: displayCustomerManagement();break;
                case 3: displayFacilityManagement();break;
                case 4:displayBookingManagement();break;
                case 5:displayPromotionManagement();break;
                case 6:return;
                default:System.out.println("Please choose 1->6");
            }
        }
    }
        public static void displayEmployeeManagement(){
            EmployeeServiceImplement employeeServiceImplement=new EmployeeServiceImplement();
            boolean checked = true;
            while (checked) {
                System.out.println("1.Display list employees");
                System.out.println("2.Add new employee");
                System.out.println("3.Edit employee");
                System.out.println("4.Return main menu\n");

                switch (tryCatch()) {
                    case 1:employeeServiceImplement.display();break;
                    case 2:employeeServiceImplement.addNew();break;
                    case 3:employeeServiceImplement.edit();break;
                    case 4:return;
                    default:System.out.println("Please choose again 1->4");
                }
            }
        }
        public static void displayCustomerManagement(){
            CustomerServiceImplement customerServiceImplement=new CustomerServiceImplement();
        boolean checked = true;
        while (checked) {
            System.out.println("1.Display list customer");
            System.out.println("2.Add new customer");
            System.out.println("3.Edit customer");
            System.out.println("4.Return main menu\n");
            Scanner scanner=new Scanner(System.in);
            switch (tryCatch()) {
                case 1:customerServiceImplement.display();break;
                case 2:customerServiceImplement.addNew();break;
                case 3:customerServiceImplement.edit();break;
                case 4:return;
                default: System.out.println("Please choose again 1->4");
            }
        }
    }
        public static void displayFacilityManagement(){
        FacilityServiceImplement facilityServiceImplement=new FacilityServiceImplement();
        boolean checked = true;
        while (checked) {
            System.out.println("1.Display list facility");
            System.out.println("2.Add new facility");
            System.out.println("3.Edit facility");
            System.out.println("4.Return main menu\n");
            switch (tryCatch()) {
                case 1:facilityServiceImplement.display();break;
                case 2:displayFacilityMenu();break;
                case 3:;
                case 4:return;
                default:System.out.println("Please choose again 1->4");
            }
        }
    }
        public static void displayBookingManagement(){
            boolean checked=true;
            while (checked){
                System.out.println("1.Add new booking");
                System.out.println("2.Display list booking");
                System.out.println("3.Create new contracts");
                System.out.println("4.Display list contracts");
                System.out.println("5.Edit contracts");
                System.out.println("6.Return main menu\n");
                switch (tryCatch()){
                    case 1:;break;
                    case 2:;break;
                    case 3:;break;
                    case 4:;break;
                    case 5:;break;
                    case 6:return;
                    default:System.out.println("Please choose again");
                }
            }
        }
        public static void displayPromotionManagement(){
        boolean checked=true;
        while (checked){
            System.out.println("1.Display list customers use services");
            System.out.println("2.Display list customers get voucher");
            System.out.println("3.Return to menu\n");
            switch (tryCatch()){
                case 1:;break;
                case 2:;break;
                case 3:return;
                default:System.out.println("Please choose again 1->3");
            }
        }
    }
    public static void displayFacilityMenu(){
        FacilityServiceImplement facilityServiceImplement=new FacilityServiceImplement();
        boolean checked = true;
        while (checked) {
            System.out.println("1.Add new villa");
            System.out.println("2.Add new room");
            System.out.println("3.add new house");
            System.out.println("4 .return");
            Scanner scanner=new Scanner(System.in);
            switch (tryCatch()) {
                case 1:facilityServiceImplement.addnewVilla();
                    displayFacilityManagement();break;
                case 2:facilityServiceImplement.addnewRoom();
                    displayFacilityManagement();break;
                case 3:facilityServiceImplement.addnewHouse();
                    displayFacilityManagement();break;
                case 4:return;
                default:System.out.println("Please choose again 1->4");
            }
        }
    }
    public static int tryCatch(){
        int choice=0;
        Scanner scanner=new Scanner(System.in);
        try {
            choice=Integer.parseInt(scanner.nextLine());
        }catch (NumberFormatException e){
            System.out.println("moi ban nhap lai");
        }
        return choice;
    }
}


