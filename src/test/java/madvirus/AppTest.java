package madvirus;

//import junit.framework.Test;
//import junit.framework.TestCase;
//import junit.framework.TestSuite;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
/**
 * Unit test for simple App.
 */

public class AppTest
{

    @Test
    public void testMessage() {

        App obj = new App();
        assertEquals("Hello hkko", obj.getMessage("hkko"));

    }

}
