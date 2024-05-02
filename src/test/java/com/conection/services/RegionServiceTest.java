package com.conection.services;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;

import com.conection.entities.Region;
import com.conection.entities.Usuario;
import com.conection.repository.RegionRepository;
import org.mockito.junit.MockitoJUnitRunner;
import org.junit.runner.RunWith;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.Assert.assertNotNull;



@RunWith(MockitoJUnitRunner.class)
public class RegionServiceTest {
    
    @InjectMocks
    private RegionService RegionService;

    @Mock
    private RegionRepository RegionRepository;

    int id;
    String nombre;
    Region Region;

   @Before 
    public void setUp() {
        RegionService = new RegionService();
        RegionRepository = Mockito.mock(RegionRepository.class);

        id = 1;
        nombre = "Elemento";

        Region = new Region(1, nombre);

        RegionRepository.save(Region);


    }

    @Test
    public void InsertRegion() {
        
        boolean result = RegionService.insertRegion(nombre);

        
        assertTrue(result);
        
    }

    @Test 
    public void getIDRegionByName() {
        
        boolean result = RegionService.insertRegion(nombre);
        int id2 = RegionService.getIDRegionByName(nombre);

        assertTrue(result);
        assertNotNull(id2);

    }

}
