package models;

public class House extends Facility {
    private String roomStandard;
    private int numberOfFloors;

    public House(String nameSevices, Double acreage, Double rentalCosts, int amountPerson, String rentalType, String roomStandard, int numberOfFloors) {
        super(nameSevices, acreage, rentalCosts, amountPerson, rentalType);
        this.roomStandard = roomStandard;
        this.numberOfFloors = numberOfFloors;
    }

    public String getRoomStandard() {
        return roomStandard;
    }

    public void setRoomStandard(String roomStandard) {
        this.roomStandard = roomStandard;
    }

    public int getNumberOfFloors() {
        return numberOfFloors;
    }

    public void setNumberOfFloors(int numberOfFloors) {
        this.numberOfFloors = numberOfFloors;
    }

    @Override
    public String toString() {
        return "House{ " + super.toString()+
                "roomStandard = '" + roomStandard + '\'' +
                ", numberOfFloors ="  + numberOfFloors +
                '}';
    }
}


