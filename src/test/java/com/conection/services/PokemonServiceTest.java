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
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;

import com.conection.categories.PerformanceTest;
import com.conection.entities.Pokemon;
import com.conection.repository.PokemonRepository;

@Category(PerformanceTest.class)
public class PokemonServiceTest {

    @InjectMocks
    private PokemonService pokemonService;

    @Mock
    private PokemonRepository pokemonRepository;

    String nombre;
    int tipo1;
    int tipo2;
    int region;

    @Before
    public void setUp() {
        pokemonService = new PokemonService();

        nombre = "Pikachu";
        tipo1 = 1; // Supongamos que 1 representa el tipo Eléctrico
        tipo2 = 0; // Supongamos que 0 representa sin segundo tipo
        region = 1; // Supongamos que 1 representa la región Kanto

        Pokemon pokemon = new Pokemon(1, nombre, tipo1, tipo2, region);
        when(pokemonRepository.save(Mockito.any(Pokemon.class))).thenReturn(pokemon);

        // Simulamos el comportamiento de búsqueda por tipo y región
        List<Pokemon> pokemonList = new ArrayList<>();
        pokemonList.add(pokemon);
        when(pokemonRepository.findAll()).thenReturn(pokemonList);
    }

    /*@Test
    public void testInsertPokemon() {
        boolean result = pokemonService.insertPokemon(nombre, tipo1, tipo2, region);
        assertTrue(result);
    }*/

    /*@Test
    public void testFindPokemonByTypeAndRegion() {
        // Insertamos un Pokémon para que podamos probar la búsqueda
        pokemonService.insertPokemon(nombre, tipo1, tipo2, region);

        List<String> pokemonNames = pokemonService.FindPokemonByTypeAndRegion(tipo1, region);
        assertNotNull(pokemonNames);
        assertTrue(pokemonNames.contains(nombre));
    }*/
}