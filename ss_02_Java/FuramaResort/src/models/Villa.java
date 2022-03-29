package models;

public class Villa extends Facility{
    private String roomStandard;
    private Double swinmmingPoolArea;

    public Villa(String nameSevices, Double acreage, Double rentalCosts, int amountPerson, String rentalType, String roomStandard, Double swinmmingPoolArea) {
        super(nameSevices, acreage, rentalCosts, amountPerson, rentalType);
        this.roomStandard = roomStandard;
        this.swinmmingPoolArea = swinmmingPoolArea;
    }

    public String getRoomStandard() {
        return roomStandard;
    }

    public void setRoomStandard(String roomStandard) {
        this.roomStandard = roomStandard;
    }

    public Double getSwinmmingPoolArea() {
        return swinmmingPoolArea;
    }

    public void setSwinmmingPoolArea(Double swinmmingPoolArea) {
        this.swinmmingPoolArea = swinmmingPoolArea;
    }

    @Override
    public String toString() {
        return "Villa{ " +super.toString()+
                "roomStandard = '" + roomStandard + '\'' +
                ", swinmmingPoolArea = " + swinmmingPoolArea +
                '}';
    }
}
