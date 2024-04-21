package com.conection;

import org.junit.Before;
import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.junit.Assert;

import com.conection.entities.Region;

@SpringBootTest
public class RegionTest {

    private Region region;

    @Before
    public void setUp() {
        region = new Region();
    }

    @Test
    public void testGetId() {
        int expectedId = 1;
        region.setId(expectedId);
        int actualId = region.getId();
        Assert.assertEquals(expectedId, actualId);
    }

    @Test
    public void testGetRegion() {
        String expectedRegion = "Test Region";
        region.setRegion(expectedRegion);
        String actualRegion = region.getRegion();
        Assert.assertEquals(expectedRegion, actualRegion);
    }
    
}
