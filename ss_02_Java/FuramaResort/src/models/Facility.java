package models;

public abstract class Facility {
    private String  nameSevices;
    private Double acreage;
    private Double rentalCosts;
    private int amountPerson ;
    private String rentalType;

    public Facility(String nameSevices, Double acreage, Double rentalCosts, int amountPerson, String rentalType) {
        this.nameSevices = nameSevices;
        this.acreage = acreage;
        this.rentalCosts = rentalCosts;
        this.amountPerson = amountPerson;
        this.rentalType = rentalType;
    }

    public String getNameSevices() {
        return nameSevices;
    }

    public void setNameSevices(String nameSevices) {
        this.nameSevices = nameSevices;
    }

    public Double getAcreage() {
        return acreage;
    }

    public void setAcreage(Double acreage) {
        this.acreage = acreage;
    }

    public Double getRentalCosts() {
        return rentalCosts;
    }

    public void setRentalCosts(Double rentalCosts) {
        this.rentalCosts = rentalCosts;
    }

    public int getAmountPerson() {
        return amountPerson;
    }

    public void setAmountPerson(int amountPerson) {
        this.amountPerson = amountPerson;
    }

    public String getRentalType() {
        return rentalType;
    }

    public void setRentalType(String rentalType) {
        this.rentalType = rentalType;
    }

    @Override
    public String toString() {
        return "" +
                "nameSevices = '" + nameSevices + '\'' +
                ", acreage = " + acreage +
                ", rentalCosts = " + rentalCosts +
                ", amountPerson = " + amountPerson +
                ", rentalType= ' " + rentalType + '\''
                ;
    }
}
