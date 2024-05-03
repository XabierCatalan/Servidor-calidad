package com.conection.controller;

import static org.junit.Assert.assertEquals;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import com.conection.categories.IntegrationTest;
import com.conection.entities.Pokemon;
import com.conection.entities.Region;
import com.conection.entities.Tipo;
import com.conection.entities.Usuario;
import com.conection.repository.PokemonRepository;
import com.conection.repository.RegionRepository;
import com.conection.repository.TipoRepository;
import com.conection.repository.UsuarioRepository;
import com.conection.services.JuegoService;
import com.conection.services.PokemonService;
import com.conection.services.RegionService;
import com.conection.services.TipoService;
import com.conection.services.UsuarioService;

@Category(IntegrationTest.class)
@RunWith(MockitoJUnitRunner.class)
public class APIControllerTest {

    @Mock
    private JuegoService juegoService;
    @Mock
	private PokemonRepository pokemonRepository;
    @Mock
	private TipoRepository tipoRepository;
	@Mock
	private RegionRepository regionRepository;
    @Mock
	private UsuarioRepository usuarioRepository;
    @Mock
	private UsuarioService usuarioService;
    @Mock
	private RegionService regionService;
    @Mock
	private TipoService tipoService;
    @Mock
	private PokemonService pokemonService;

    @InjectMocks
    private APIController apiController;

    @Before
    public void setUp() {

        HashMap<Integer, List<String>> mockJuego = new HashMap<>();
        List<String> mockCondicionesTipo = new ArrayList<>();
        List<String> mockCondicionesRegion = new ArrayList<>();
        List<Pokemon> mockPokemons = new ArrayList<>();
        Pokemon pokemon1 = new Pokemon(1, "Bulbasaur", 1, 2, 1);
        mockPokemons.add(pokemon1);
        List<Tipo> mockTipos = new ArrayList<>();
        Tipo tipo1 = new Tipo(1, "Fuego");
        mockTipos.add(tipo1);
        List<Region> mockRegiones = new ArrayList<>();
        Region region1 = new Region(1, "Kanto");
        mockRegiones.add(region1);
        Usuario usuario1 = new Usuario(1, "unai1", "unai1", 1);
        Usuario usuario2 = new Usuario(2, "unai2", "unai2", 2);
        Usuario usuario3 = new Usuario(3, "unai3", "unai3", 3);

       
        when(usuarioService.checkUsuarioByCorreoContra("jonan", "jonan")).thenReturn(true);
        when(usuarioService.checkUsuarioByCorreoContra("jonan1", "jonan1")).thenReturn(false);
        when(usuarioService.checkUsuarioByCorreoContra("jonan2", "jonan2")).thenReturn(false);
        when(usuarioService.insertUsuario("jonan1", "jonan1", 1)).thenReturn(true);
        when(usuarioService.insertUsuario("jonan2", "jonan2", 1)).thenReturn(false);
        
        when(usuarioService.insertUsuario("jonan2", "jonan2", 1)).thenReturn(false);

        when(tipoService.InsertTipo("Elemento1")).thenReturn(true);
        when(tipoService.InsertTipo("Elemento2")).thenReturn(false);
        when(regionService.insertRegion("Espanya")).thenReturn(true);
        when(regionService.insertRegion("Francia")).thenReturn(false);
        when(usuarioService.getUsuarioByCorreoContra("unai", "unai")).thenReturn(null);
        when(usuarioService.getUsuarioByCorreoContra("unai1", "unai1")).thenReturn(usuario1);
        when(usuarioService.getUsuarioByCorreoContra("unai2", "unai2")).thenReturn(usuario2);
        when(usuarioService.getUsuarioByCorreoContra("unai3", "unai3")).thenReturn(usuario3);
        when(usuarioService.checkUsuarioByCorreoContra("xabi", "xabi")).thenReturn(true);
        when(usuarioService.checkUsuarioByCorreoContra("oscar", "oscar")).thenReturn(false);
        when(usuarioService.checkUsuarioByCorreoContra("oscar1", "oscar1")).thenReturn(false);
        when(usuarioService.insertUsuario("oscar", "oscar", 1)).thenReturn(true);
        when(usuarioService.insertUsuario("oscar1", "oscar1", 1)).thenReturn(false);
        when(regionRepository.findAll()).thenReturn(mockRegiones);
        when(tipoRepository.findAll()).thenReturn(mockTipos);
        when(pokemonRepository.findAll()).thenReturn(mockPokemons);
        when(juegoService.getCondicionesTipo()).thenReturn(mockCondicionesTipo);
        when(juegoService.getCondicionesRegion()).thenReturn(mockCondicionesRegion);
        when(juegoService.prueba()).thenReturn("Hola");
        when(juegoService.crearJuego()).thenReturn(mockJuego);

        
    }

    @Test
    public void testHolaMundo() {
        assertEquals("Hola Mundo", apiController.holaMundo());
    }

    @Test
    public void testPrueba() {

        String result = apiController.prueba();
        verify(juegoService).prueba();
        assertEquals("Hola", result);
    }

    @Test
    public void testCrearJuego() {
        HashMap<Integer, List<String>> juego = apiController.crearJuego();
        verify(juegoService).crearJuego();
        HashMap<Integer, List<String>> juegoEsperado = new HashMap<>();
        assertEquals(juegoEsperado, juego);
    }

    @Test
    public void testGetCondicionesTipo() {
        

        List<String> result = apiController.getCondicionesTipo();
        verify(juegoService).getCondicionesTipo();
        List<String> condicionesTipoEsperado = new ArrayList<>();
        assertEquals(condicionesTipoEsperado, result);
    }

    @Test
    public void testGetCondicionesRegion() {
        

        List<String> result = apiController.getCondicionesRegion();
        verify(juegoService).getCondicionesRegion();
        List<String> condicionesRegionEsperado = new ArrayList<>();
        assertEquals(condicionesRegionEsperado, result);
    }

    @Test
    public void testListap() {
        ArrayList<String> lista = new ArrayList<String>();
        Pokemon pokemonesperado = new Pokemon(1, "Bulbasaur", 1, 2, 1);
        lista.add(pokemonesperado.getNombre());
        ArrayList<String> result = apiController.listap();
        verify(pokemonRepository).findAll();
        
        assertEquals(lista.get(0), result.get(0));
    }

    @Test
    public void testListat() {
        ArrayList<Tipo> lista = new ArrayList<>();
        Tipo tipoesperado = new Tipo(1, "Fuego");
        lista.add(tipoesperado);

        ArrayList<Tipo> result = apiController.listat();
        verify(tipoRepository).findAll();
        
        assertEquals(lista.get(0).getId(), result.get(0).getId());
        assertEquals(lista.get(0).getTipo(), result.get(0).getTipo());
        
    }

    @Test
    public void testListatiposNombres() {
        ArrayList<String> lista = new ArrayList<>();
        Tipo tipoesperado = new Tipo(1, "Fuego");
        lista.add(tipoesperado.getTipo());

        ArrayList<String> result = apiController.listatiposNombres();
        verify(tipoRepository).findAll();
        
        assertEquals(lista.get(0), result.get(0));
        
    }

    @Test
    public void testListar() {
        ArrayList<Region> lista = new ArrayList<>();
        Region regionesperada = new Region(1, "Kanto");
        lista.add(regionesperada);

        ArrayList<Region> result = apiController.listar();
        verify(regionRepository).findAll();
        
        assertEquals(lista.get(0).getId(), result.get(0).getId());
        assertEquals(lista.get(0).getRegion(), result.get(0).getRegion());
        
    }

    @Test
    public void testListaregionNombres() {
        ArrayList<String> lista = new ArrayList<>();
        Region regionesperada = new Region(1, "Kanto");
        lista.add(regionesperada.getRegion());

        ArrayList<String> result = apiController.listaregionNombres();
        verify(regionRepository).findAll();
        
        assertEquals(lista.get(0), result.get(0));
        
    }

    @Test
    public void testRegistrar() {

        String result = apiController.registrar("xabi", "xabi");
        verify(usuarioService).checkUsuarioByCorreoContra("xabi", "xabi");

        assertEquals("Usuario ya Existe", result);

        String result1 = apiController.registrar("oscar", "oscar");
        verify(usuarioService).checkUsuarioByCorreoContra("oscar", "oscar");
        verify(usuarioService).insertUsuario("oscar", "oscar", 1);

        assertEquals("Usuario registrado", result1);

        String result2 = apiController.registrar("oscar1", "oscar1");
        verify(usuarioService).checkUsuarioByCorreoContra("oscar1", "oscar1");
        verify(usuarioService).insertUsuario("oscar1", "oscar1", 1);

        assertEquals("Error al registrar", result2);


    }

    @Test
    public void testIniciarSesion() {

        String result = apiController.iniciarSesion("unai", "unai" );
        verify(usuarioService).getUsuarioByCorreoContra("unai", "unai");

        assertEquals("Usuario no existe", result);

        String result1 = apiController.iniciarSesion("unai1", "unai1" );
        verify(usuarioService).getUsuarioByCorreoContra("unai1", "unai1");

        assertEquals("Jugador", result1);

        String result2 = apiController.iniciarSesion("unai2", "unai2" );
        verify(usuarioService).getUsuarioByCorreoContra("unai2", "unai2");

        assertEquals("Admin", result2);

        String result3 = apiController.iniciarSesion("unai3", "unai3" );
        verify(usuarioService).getUsuarioByCorreoContra("unai3", "unai3");

        assertEquals("", result3);


    }

    @Test
    public void testInsertRegion() {

        String result = apiController.InsertRegion("Espanya");
        verify(regionService).insertRegion("Espanya");

        assertEquals("Region registrada", result);

        String result1 = apiController.InsertRegion("Francia");
        verify(regionService).insertRegion("Francia");

        assertEquals("Error al insertar", result1);


    }

    @Test
    public void testInsertTipo() {

        String result = apiController.InsertTipo("Elemento1");
        verify(tipoService).InsertTipo("Elemento1");

        assertEquals("Tipo registrado", result);

        String result1 = apiController.InsertTipo("Elemento2");
        verify(tipoService).InsertTipo("Elemento2");

        assertEquals("Error al insertar", result1);

    }

    @Test
    public void testInsertUsuario() {

        String result = apiController.InsertUsuario("jonan", "jonan", "1");
        verify(usuarioService).checkUsuarioByCorreoContra("jonan", "jonan");

        assertEquals("Usuario ya existe", result);

        String result1 = apiController.InsertUsuario("jonan1", "jonan1", "1");
        verify(usuarioService).checkUsuarioByCorreoContra("jonan1", "jonan1");
        verify(usuarioService).insertUsuario("jonan1", "jonan1", 1);

        assertEquals("Usuario Insertado", result1);

        String result2 = apiController.InsertUsuario("jonan2", "jonan2", "1");
        verify(usuarioService).checkUsuarioByCorreoContra("jonan2", "jonan2");
        verify(usuarioService).insertUsuario("jonan2", "jonan2", 1);

        assertEquals("Error al insertar el Usuaruo desde el admin", result2);

        
        

    }


    @Test
    public void testInsertPokemon() {




    }



}