package models;

public class Room extends Facility{
    private String freeSevices;

    public Room(String nameSevices, Double acreage, Double rentalCosts, int amountPerson, String rentalType, String freeSevices) {
        super(nameSevices, acreage, rentalCosts, amountPerson, rentalType);
        this.freeSevices = freeSevices;
    }

    public String getFreeSevices() {
        return freeSevices;
    }

    public void setFreeSevices(String freeSevices) {
        this.freeSevices = freeSevices;
    }

    @Override
    public String toString() {
        return "Room{ " +super.toString()+
                "freeSevices = '" + freeSevices + '\'' +
                '}';
    }
}
