import DTOs.Identifiers.CarIdentifier;
import DTOs.HotelDetails;
import org.junit.Test;
import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

public class FrontendTest {

    @Test
    public void testGetHotelName() {
        List<CarIdentifier> list = new ArrayList<CarIdentifier>();
        String nameOfHotel = new HotelDetails("1", "Some hotel", "some address", 2.2f, list ,"Some city").getName();
        assertEquals("Some hotel", nameOfHotel);
    }
}
