package com.conection.entities;


import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.junit.Assert;

import com.conection.entities.Pokemon;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;


@RunWith(MockitoJUnitRunner.class)

public class PokemonTest {
    @Mock
    private Pokemon pokemon1;
    @Mock
    private Pokemon pokemon2;
    
    private int id = 1;
    private String nombre = "Bulbasaur";
    private int region = 1;
    private int tipo1 = 1;
    private int tipo2 = 2;

    @Before 
    public void setUp() {
        pokemon1 = new Pokemon();
        pokemon2 = new Pokemon(1, "Bulbasaur", 1, 2, 1);
        
    }

    @Test
    public void testNoArgsConts() {
        Pokemon pokemon11 = new Pokemon();
        
        Assert.assertEquals(pokemon1.getId(), pokemon11.getId());
        Assert.assertEquals(pokemon1.getNombre(), pokemon11.getNombre());
        Assert.assertEquals(pokemon1.getRegion(), pokemon11.getRegion());
        Assert.assertEquals(pokemon1.getTipo1(), pokemon11.getTipo1());
        Assert.assertEquals(pokemon1.getTipo2(), pokemon11.getTipo2());

    }

    @Test
    public void testArgsContsTrue() {
        Pokemon pokemon22 = new Pokemon(1, "Bulbasaur", 1, 2, 1);
        
        Assert.assertEquals(pokemon2.getId(), pokemon22.getId());
        Assert.assertEquals(pokemon2.getNombre(), pokemon22.getNombre());
        Assert.assertEquals(pokemon2.getRegion(), pokemon22.getRegion());
        Assert.assertEquals(pokemon2.getTipo1(), pokemon22.getTipo1());
        Assert.assertEquals(pokemon2.getTipo2(), pokemon22.getTipo2());

    }

    @Test
    public void testArgsContsFalse() {
        Pokemon pokemon22 = new Pokemon(2, "Charizard", 2, 10, 2);
        
        Assert.assertNotEquals(pokemon2.getId(), pokemon22.getId());
        Assert.assertNotEquals(pokemon2.getNombre(), pokemon22.getNombre());
        Assert.assertNotEquals(pokemon2.getRegion(), pokemon22.getRegion());
        Assert.assertNotEquals(pokemon2.getTipo1(), pokemon22.getTipo1());
        Assert.assertNotEquals(pokemon2.getTipo2(), pokemon22.getTipo2());

    }

    @Test
    public void testGetID() {
        Assert.assertEquals(id, pokemon2.getId());
    }

    @Test
    public void testSetID() {
        Assert.assertEquals(id, pokemon2.getId());
        pokemon2.setId(2);
        Assert.assertEquals(2, pokemon2.getId());
    }

    @Test
    public void testGetNombre() {
        Assert.assertEquals(nombre, pokemon2.getNombre());
    }

    @Test
    public void testSetNombre() {
        Assert.assertEquals(nombre, pokemon2.getNombre());
        pokemon2.setNombre("Charizard");
        Assert.assertEquals("Charizard", pokemon2.getNombre());
    }

    @Test
    public void testGetTipo1() {
        Assert.assertEquals(tipo1, pokemon2.getTipo1());
    }

    @Test
    public void testSetTipo1() {
        Assert.assertEquals(tipo1, pokemon2.getTipo1());
        pokemon2.setTipo1(2);
        Assert.assertEquals(2, pokemon2.getTipo1());
    }

    @Test
    public void testGetTipo2() {
        Assert.assertEquals(tipo2, pokemon2.getTipo2());
    }

    @Test
    public void testSetTipo2() {
        Assert.assertEquals(tipo2, pokemon2.getTipo2());
        pokemon2.setTipo2(10);
        Assert.assertEquals(10, pokemon2.getTipo2());
    }

    @Test
    public void testGetRegion() {
        Assert.assertEquals(region, pokemon2.getRegion());
    }

    @Test
    public void testSetRegion() {
        Assert.assertEquals(region, pokemon2.getRegion());
        pokemon2.setRegion(2);
        Assert.assertEquals(2, pokemon2.getRegion());
    }

    
}
