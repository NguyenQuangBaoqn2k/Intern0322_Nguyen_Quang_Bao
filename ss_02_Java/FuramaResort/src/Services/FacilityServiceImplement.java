package Services;

import models.Facility;
import models.House;
import models.Room;
import models.Villa;
import untils.RegexData;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class FacilityServiceImplement implements FacilityService {

    public static final  String REGEX_STR = "[A-Z][a-z]+";
    public static final  String REGEX_ID_VILLA="(SVVL)[-][\\d]{4}";
    public static final  String REGEX_AMOUNT="^[1-9]|([1][0-9])|(20)$";
    public static final  String REGEX_INT="^[1-9]|([1][0-9])$";
    public static final  String REGEX_AREA="([3-9]\\d|[1-9]\\d{2,})$";


    private static Scanner scanner=new Scanner(System.in);
    private static Map<Facility,Integer> facilityIntegerMap=new LinkedHashMap<>();
    @Override
    public void addnewVilla() {
        System.out.println("-------------nhap thong tin villa-----------");
        String name=inputName();
        Double area=Double.parseDouble(inputArea());
        Double price=Double.parseDouble(inputPrice());
        System.out.println("so luong nguoi");
        int sl=trycatch();
        String kt=inputType();
        String tcp=inputRoomStandard();
        Double areaswim=Double.parseDouble(inputAreaSwim());
        Villa villa=new Villa(name,area,price,sl,kt,tcp,areaswim);
        facilityIntegerMap.put(villa,0);
        System.out.println("da them moi villa thanh cong");

    }

    @Override
    public void addnewHouse() {
        System.out.println("-------------nhap thong tin House-----------");
        String name=inputName();
        Double area=Double.parseDouble((inputArea()));
        Double price=Double.parseDouble(inputPrice());
        System.out.println("so luong nguoi");
        int sl=trycatch();
        String kt=inputType();
        String tcp=inputRoomStandard();
        int st=Integer.parseInt(inputLevel());
        House house=new House(name,area,price,sl,kt,tcp,st);
        facilityIntegerMap.put(house,0);
        System.out.println("da them moi house thanh cong");
    }

    @Override
    public void addnewRoom() {
        System.out.println("-------------nhap thong tin Room-----------");
        String name=inputName();
        Double area=Double.parseDouble((inputArea()));
        Double price=Double.parseDouble(inputPrice());
        System.out.println("so luong nguoi");
        int sl=trycatch();
        String kt=inputType();
        System.out.println("dich vu mien phi di kem");
        String fs=scanner.nextLine();
        Room room=new Room(name,area,price,sl,kt,fs);
        facilityIntegerMap.put(room,0);
        System.out.println("da them moi room thanh cong");
    }

    @Override
    public void display() {
        for (Map.Entry<Facility,Integer> element :facilityIntegerMap.entrySet()){
            System.out.println("Service "+element.getKey().toString()+"so lan da thue: "+element.getValue());
        }
    }

    @Override
    public void displaymaintain() {

    }

    @Override
    public int trycatch() {
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
    public  static Double tryCachD(){
        Double choice = null;
        boolean check=true;
        do {
            try {
                choice = Double.parseDouble(scanner.nextLine());
                check=false;
            } catch (NumberFormatException e) {
                System.out.println("ban phai nhap kieu so");
                check=true;
            }
        }while (check);
        return choice;
    }

//    private  String inputId(){
//        System.out.println("ma dich vu");
//        return RegexData.regexStr(scanner.nextLine(),REGEX_ID_VILLA,"ban da nhap sai dinh dang ma dich vu ma dich vu phai co dang la SVVL_XXXX ");
//    }
    private String inputName(){
        System.out.println("Ten dich vu");
        return  RegexData.regexStr(scanner.nextLine(),REGEX_STR,"ban da nhap sai, ten dich vu phai viet hoa chu cai dau");
    }
    private String inputArea(){
        System.out.println("nhap dien tich dich vu");
        return RegexData.regexStr(scanner.nextLine(),REGEX_AREA,"ban da nhap sai, dinh tich phai lon hon 30 ");
    }
    private String inputPrice(){
        System.out.println("nhap gia tien");
        return RegexData.regexStr(scanner.nextLine(),REGEX_INT,"ban da nhap sai, so tien phai la so duong");
    }
    private String inputLevel(){
        System.out.println("nhap so tang");
        return RegexData.regexStr(scanner.nextLine(),REGEX_INT,"ban da nhap sai, dinh dang so tang la so duong");
    }
    private String inputRoomStandard(){
        System.out.println("nhap tieu chuan phong");
        return  RegexData.regexStr(scanner.nextLine(),REGEX_STR,"ban da nhap sai, tieu chuan phong phai viet hoa chu cai dau");
    }
    private String inputType(){
        System.out.println("nhap kieu thue");
        return  RegexData.regexStr(scanner.nextLine(),REGEX_STR,"ban da nhap sai, kieu thue phai viet hoa chu cai dau");
    }
    private String inputAreaSwim(){
        System.out.println("nhap dien tich ho boi");
        return RegexData.regexStr(scanner.nextLine(),REGEX_AREA,"ban da nhap sai,dinh tich ho boi phai lon hon 30 ");
    }
}
