package utils;

import DTOs.AvailabilityDetails;
import DTOs.Identifiers.BookingIdentifier;
import DTOs.Identifiers.CarIdentifier;
import DTOs.Identifiers.StationIdentifier;

import java.util.List;
import java.time.LocalDateTime;

public class Utils {

    private StationIdentifier stationIdentifier;
    private CarIdentifier carIdentifier;

    public Utils(String pickUpPlace, String car) {
        this.stationIdentifier = new StationIdentifier(pickUpPlace) {
            @Override
            public String getId() {
                return super.getId();
            }
        };
        this.carIdentifier = new CarIdentifier(car) {
            @Override
            public String getId() {
                return super.getId();
            }
        };
    }

    public Utils() {
    }


    public List<CarIdentifier> getCarsFromServer(LocalDateTime pickUpTime, LocalDateTime deliveryTime) {
        AvailabilityDetails details = new AvailabilityDetails(pickUpTime, deliveryTime, this.stationIdentifier, this.carIdentifier);
        try {
            return Client.getICars().getAvailableCars(details);
        } catch (Exception e) {
            System.out.println("Something is wrong with the connection to the server");
        }
        return null;
    }

    public BookingIdentifier addNewBooking(String id) {
        CarIdentifier carId = new CarIdentifier(id) {
            @Override
            public String getId() {
                return super.getId();
            }
        };
        try {
            return Client.getIBooking().addNewBooking(carId);
        } catch( Exception e) {
            System.out.println("Something is wrong with the connection to the server");
        }
        return null;
    }
}
