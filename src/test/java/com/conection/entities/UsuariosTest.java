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

import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class UsuariosTest {

    @Mock
    private Usuario usuario1;
    @Mock
    private Usuario usuario2;

    @Before
    public void setUp() {
        usuario1 = new Usuario();
        usuario2 = new Usuario(1, "o.perez@gmail.com", "opled", 1);
    }

    @Test 
    public void testNoArgsConts() {
        Usuario usuario11 = new Usuario();
        
        Assert.assertEquals(usuario1.getId(), usuario11.getId());
        Assert.assertEquals(usuario1.getCorreo(), usuario11.getCorreo());
        Assert.assertEquals(usuario1.getContra(), usuario11.getContra());
        Assert.assertEquals(usuario1.getNivel(), usuario11.getNivel());

    }

    @Test
    public void testArgsContsTrue() {
        Usuario usuario22 = new Usuario(1, "o.perez@gmail.com", "opled", 1);

        Assert.assertEquals(usuario2.getId(), usuario22.getId());
        Assert.assertEquals(usuario2.getCorreo(), usuario22.getCorreo());
        Assert.assertEquals(usuario2.getContra(), usuario22.getContra());
        Assert.assertEquals(usuario2.getNivel(), usuario22.getNivel());

    }

    @Test 
    public void testGetID() {
        int expectedId = 1;
        Assert.assertEquals(expectedId, usuario2.getId());
    }

    @Test
    public void testSetId() {
        int expectedId = 1;
        usuario2.setId(expectedId);
        int actualId = usuario2.getId();
        Assert.assertEquals(expectedId, actualId);
    }

    @Test
    public void testGetCorreo() {
        String expectedusuario = "o.perez@gmail.com";
        Assert.assertEquals(expectedusuario, usuario2.getCorreo());
    }

    @Test
    public void testSetusuario() {
        String expectedusuario = "xabi@gmail.com";
        usuario2.setCorreo(expectedusuario);
        Assert.assertEquals(expectedusuario, usuario2.getCorreo());
    }

    @Test
    public void testGetContra() {
        String expectedusuario = "opled";
        Assert.assertEquals(expectedusuario, usuario2.getContra());
    }

    @Test
    public void testSetContra() {
        String expectedusuario = "xabi";
        usuario2.setContra(expectedusuario);
        Assert.assertEquals(expectedusuario, usuario2.getContra());
    }

    @Test
    public void testGetNivel() {
        int nivel = 1;
        Assert.assertEquals(nivel, usuario2.getNivel());
    }

    @Test
    public void testSetNivel() {
        int nivel = 2;
        usuario2.setNivel(nivel);
        Assert.assertEquals(nivel, usuario2.getNivel());
    }

    

}
