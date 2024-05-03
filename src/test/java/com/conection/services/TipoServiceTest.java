package com.conection.services;

import org.junit.Before;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;

import com.conection.categories.IntegrationTest;
import com.conection.entities.Tipo;
import com.conection.entities.Usuario;
import com.conection.repository.TipoRepository;
import org.mockito.junit.MockitoJUnitRunner;
import org.junit.runner.RunWith;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.Assert.assertNotNull;


@Category(IntegrationTest.class)
@RunWith(MockitoJUnitRunner.class)
public class TipoServiceTest {
    
    @InjectMocks
    private TipoService tipoService;

    @Mock
    private TipoRepository tipoRepository;

    int id;
    String nombre;
    Tipo tipo;

   @Before 
    public void setUp() {
        tipoService = new TipoService();
        tipoRepository = Mockito.mock(TipoRepository.class);

        id = 1;
        nombre = "Elemento";

        tipo = new Tipo(1, nombre);

        tipoRepository.save(tipo);


    }

    @Test
    public void InsertTipo() {
        
        boolean result = tipoService.InsertTipo(nombre);

        
        assertTrue(result);
        
    }

    @Test 
    public void getIDTipoByName() {
        
        boolean result = tipoService.InsertTipo(nombre);
        int id2 = tipoService.getIDTipoByName(nombre);

        assertTrue(result);
        assertNotNull(id2);

    }

}
