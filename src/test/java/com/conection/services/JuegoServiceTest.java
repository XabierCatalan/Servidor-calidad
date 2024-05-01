package com.conection.services;

import static org.junit.Assert.assertEquals;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import com.conection.entities.Region;
import com.conection.entities.Tipo;
import com.conection.repository.PokemonRepository;
import com.conection.repository.RegionRepository;
import com.conection.repository.TipoRepository;
import com.conection.services.JuegoService;
import com.conection.services.PokemonService;




@RunWith(MockitoJUnitRunner.class)
public class JuegoServiceTest {

    @Mock
    private TipoRepository tipoRepository;

    @Mock
    private RegionRepository regionRepository;

    @Mock
    private PokemonService pokemonService;

    @InjectMocks
    private JuegoService juegoService;

    private List<Tipo> mockTipos;
    private List<Region> mockRegiones;

    @Before
    public void setUp() {
        // Configurar mocks de tipos y regiones para el repositorio
        mockTipos = new ArrayList<>();
        mockTipos.add(new Tipo(1, "Fuego"));
        mockTipos.add(new Tipo(2, "Agua"));
        mockTipos.add(new Tipo(3, "Planta"));

        mockRegiones = new ArrayList<>();
        mockRegiones.add(new Region(1, "Kanto"));
        mockRegiones.add(new Region(2, "Johto"));
        mockRegiones.add(new Region(3, "Hoenn"));

        when(tipoRepository.findAll()).thenReturn(mockTipos);
        when(regionRepository.findAll()).thenReturn(mockRegiones);

        // Configurar comportamiento simulado para el servicio de Pokemon
        when(pokemonService.FindPokemonByTypeAndRegion(anyInt(), anyInt()))
                .thenReturn(new ArrayList<>()); // Simular lista vacía por defecto
    }

    @Test
    public void testCrearJuego() {
        // Llamar al método que queremos probar
        HashMap<Integer, List<String>> juego = juegoService.crearJuego();

        // Verificar que se llamó a findAll en tipoRepository y regionRepository
        verify(tipoRepository).findAll();
        verify(regionRepository).findAll();

        // Verificar llamadas al servicio de Pokemon para cada combinación de tipo y región
        for (Tipo tipo : mockTipos) {
            for (Region region : mockRegiones) {
                verify(pokemonService).FindPokemonByTypeAndRegion(tipo.getId(), region.getId());
            }
        }

        // Verificar que el tamaño del juego es correcto
        assertEquals(mockTipos.size() * mockRegiones.size(), juego.size());

        // Verificar que cada lista de nombres de Pokemon tenga al menos un elemento
        for (List<String> nombresPokemon : juego.values()) {
            assertEquals(1, nombresPokemon.size());
            assertEquals("NINGUNO", nombresPokemon.get(0)); // Se esperaba "NINGUNO" si está vacía
        }
    }

    // Otros tests para los métodos adicionales de JuegoService si es necesario
}