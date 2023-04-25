package madvirus;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class MessageBuilderTest {

    @Test
    public void testName() {

        MessageBuilder obj = new MessageBuilder();
        assertEquals("Hello hkko", obj.getMessage("hkko"));

    }

}
