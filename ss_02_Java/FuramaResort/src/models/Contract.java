package models;

public class Contract {
    private String idContract;
    private String idBooking;
    private double depositAmount;
    private double totalPayment;
    private String idEmployee;

    public Contract(String idContract, String idBooking, double depositAmount, double totalPayment, String idEmployee) {
        this.idContract = idContract;
        this.idBooking = idBooking;
        this.depositAmount = depositAmount;
        this.totalPayment = totalPayment;
        this.idEmployee = idEmployee;
    }

    public String getIdContract() {
        return idContract;
    }

    public void setIdContract(String idContract) {
        this.idContract = idContract;
    }

    public String getIdBooking() {
        return idBooking;
    }

    public void setIdBooking(String idBooking) {
        this.idBooking = idBooking;
    }

    public double getDepositAmount() {
        return depositAmount;
    }

    public void setDepositAmount(double depositAmount) {
        this.depositAmount = depositAmount;
    }

    public double getTotalPayment() {
        return totalPayment;
    }

    public void setTotalPayment(double totalPayment) {
        this.totalPayment = totalPayment;
    }

    public String getIdEmployee() {
        return idEmployee;
    }

    public void setIdEmployee(String idEmployee) {
        this.idEmployee = idEmployee;
    }
}
