package com.conection;

import org.junit.Before;
import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.junit.Assert;

import com.conection.entities.Region;

@SpringBootTest
public class RegionTest {

    private Region region1;
    private Region region2;

    @Before
    public void setUp() {
        region1 = new Region();
        region2 = new Region(1, "Test Region");
    }

    @Test 
    public void testNoArgsConts() {
        Region region11 = new Region();
        
        Assert.assertEquals(region1.getId(), region11.getId());
        Assert.assertEquals(region1.getRegion(), region11.getRegion());
    }

    @Test
    public void testArgsContsTrue() {
        Region region22 = new Region(1, "Test Region");
        
        Assert.assertEquals(region2.getId(), region22.getId());
        Assert.assertEquals(region2.getRegion(), region22.getRegion());
    }

    @Test 
    public void testGetID() {
        int expectedId = 1;
        Assert.assertEquals(expectedId, region2.getId());
    }

    @Test
    public void testSetId() {
        int expectedId = 1;
        region2.setId(expectedId);
        int actualId = region2.getId();
        Assert.assertEquals(expectedId, actualId);
    }

    @Test
    public void testGetRegion() {
        String expectedRegion = "Test Region";
        Assert.assertEquals(expectedRegion, region2.getRegion());
    }

    @Test
    public void testSetRegion() {
        String expectedRegion = "Test Region";
        region2.setRegion(expectedRegion);
        Assert.assertEquals(expectedRegion, region2.getRegion());
    }
    
}
