import DTOs.HotelDetails;
import DTOs.Identifiers.CarIdentifier;
import org.junit.Test;
import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

public class BackendTest {
    @Test
    public void testGetHotelName() {
        List<CarIdentifier> list = new ArrayList<CarIdentifier>();
        String nameOfHotel = new HotelDetails("1", "Some hotel", "some address", 2.2f, list ,"Some city").getName();
        assertEquals("Some hotel", nameOfHotel);
    }
}
