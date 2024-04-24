package com.conection.entities;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.boot.test.context.SpringBootTest;
import org.junit.Assert;

import com.conection.entities.Tipo;

@RunWith(MockitoJUnitRunner.class)
public class TipoTest {

    @Mock
    private Tipo Tipo1;
    @Mock
    private Tipo Tipo2;

    @Before
    public void setUp() {
        Tipo1 = new Tipo();
        Tipo2 = new Tipo(1, "Test Tipo");
    }

    @Test 
    public void testNoArgsConts() {
        Tipo Tipo11 = new Tipo();
        
        Assert.assertEquals(Tipo1.getId(), Tipo11.getId());
        Assert.assertEquals(Tipo1.getTipo(), Tipo11.getTipo());
    }

    @Test
    public void testArgsContsTrue() {
        Tipo Tipo22 = new Tipo(1, "Test Tipo");
        
        Assert.assertEquals(Tipo2.getId(), Tipo22.getId());
        Assert.assertEquals(Tipo2.getTipo(), Tipo22.getTipo());
    }

    @Test 
    public void testGetID() {
        int expectedId = 1;
        Assert.assertEquals(expectedId, Tipo2.getId());
    }

    @Test
    public void testSetId() {
        int expectedId = 1;
        Tipo2.setId(expectedId);
        int actualId = Tipo2.getId();
        Assert.assertEquals(expectedId, actualId);
    }

    @Test
    public void testGetTipo() {
        String expectedTipo = "Test Tipo";
        Assert.assertEquals(expectedTipo, Tipo2.getTipo());
    }

    @Test
    public void testSetTipo() {
        String expectedTipo = "Test Tipo";
        Tipo2.setTipo(expectedTipo);
        Assert.assertEquals(expectedTipo, Tipo2.getTipo());
    }
    
}
