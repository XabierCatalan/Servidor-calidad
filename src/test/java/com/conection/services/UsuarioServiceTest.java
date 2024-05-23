package com.conection.services;

import static org.junit.Assert.assertNull;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.sql.SQLException;
import java.util.List;

import org.junit.Before;

import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import com.conection.categories.PerformanceTest;
import com.conection.entities.Pokemon;
import com.conection.entities.Usuario;
import com.conection.repository.UsuarioRepository;
import com.conection.services.UsuarioService;

import jakarta.inject.Inject;

@Category(PerformanceTest.class)
@RunWith(MockitoJUnitRunner.class)
public class UsuarioServiceTest {

    @InjectMocks
    private UsuarioService usuarioService;

    @Mock
    private UsuarioRepository usuarioRepository;

    String correo;
    String contra;
    int nivel;
    Usuario usuario;

   @Before 
    public void setUp() {
       usuarioService = new UsuarioService();
       usuarioRepository = Mockito.mock(UsuarioRepository.class);

        correo = "o.perez@opendeusto.es";
        contra = "o.perez";
        nivel = 2;

        usuario = new Usuario(1, correo, contra, nivel);

        usuarioRepository.save(usuario);


    }

    @Test
    public void testCheckUsuarioByCorreoContra() {
        
        boolean result = usuarioService.checkUsuarioByCorreoContra(correo, contra);

        
        assertTrue(result);
        
    }

    @Test 
    public void testinsertUsuario() {

        String correo2 = "koldo@opendeusto.es";
        String contra2 = "koldo";
        int nivel2 = 1;
        
        boolean result = usuarioService.insertUsuario(correo2, contra2, nivel2);
        boolean result2 = usuarioService.checkUsuarioByCorreoContra(correo2, contra2);

        assertTrue(result);
        assertTrue(result2);

    }

    @Test
    public void testGetUsuarioByCorreoContra() {
        
        Usuario result = usuarioService.getUsuarioByCorreoContra(correo, contra);

        assertNotNull(result);
        assertEquals(result.getId(), usuario.getId());
        assertEquals(result.getCorreo(), usuario.getCorreo());
        assertEquals(result.getContra(), usuario.getContra());
        assertEquals(result.getNivel(), usuario.getNivel());
    }

    @Test
    public void testGetUsuarios() {
        
        List<String> result = usuarioService.getUsuarios();

        String primerEsperado = "Usuario{id=1, Correo='o.perez@opendeusto.es', Contra='o.perez', Nivel=2}";

        assertEquals(primerEsperado, result.get(0));
    }


}
