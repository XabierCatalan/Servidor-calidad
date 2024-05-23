package com.conection.services;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import com.conection.categories.PerformanceTest;
import com.conection.entities.Pokemon;
import com.conection.repository.PokemonRepository;
import com.conection.repository.UsuarioRepository;

@RunWith(MockitoJUnitRunner.class)
public class PokemonServiceTest {

    @InjectMocks
    private PokemonService pokemonService;

    @Mock
    private PokemonRepository pokemonRepository;

    

    @Before
    public void setUp() {
        pokemonService = new PokemonService();
        pokemonRepository = Mockito.mock(PokemonRepository.class);


        

    }

    @Test
    public void testFindPokemonByTypeAndRegion() {

        List<String> result = pokemonService.FindPokemonByTypeAndRegion(1, 8);

        List<String> esperado = new ArrayList<>();
        esperado.add("SKWOVET");
        esperado.add("GREEDENT");
        esperado.add("WOOLOO");
        esperado.add("DUBWOOL");
        esperado.add("OBSTAGOON");

        

        assertEquals(esperado, result);
        
    }

    @Test
    public void testInsertPokemon() {

        boolean result = pokemonService.insertPokemon("prueba", 1, 2, 1);

        assertTrue(result);
        
    }


    /*@Test
    public void testFindPokemonByTypeAndRegion() {
        // Insertamos un Pokémon para que podamos probar la búsqueda
        pokemonService.insertPokemon(nombre, tipo1, tipo2, region);

        List<String> pokemonNames = pokemonService.FindPokemonByTypeAndRegion(tipo1, region);
        assertNotNull(pokemonNames);
        assertTrue(pokemonNames.contains(nombre));
    }*/
}