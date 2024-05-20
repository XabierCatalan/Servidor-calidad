package com.conection.services;

import org.junit.Before;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;

import com.conection.categories.IntegrationTest;
import com.conection.entities.Pokemon;
import com.conection.repository.PokemonRepository;
import org.mockito.junit.MockitoJUnitRunner;
import org.junit.runner.RunWith;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@Category(IntegrationTest.class)
@RunWith(MockitoJUnitRunner.class)
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
        pokemonRepository = Mockito.mock(PokemonRepository.class);

        nombre = "Pikachu";
        tipo1 = 1; // Supongamos que 1 representa el tipo Eléctrico
        tipo2 = 0; // Supongamos que 0 representa sin segundo tipo
        region = 1; // Supongamos que 1 representa la región Kanto

        Pokemon pokemon = new Pokemon(1, nombre, tipo1, tipo2, region);
        Mockito.when(pokemonRepository.save(Mockito.any(Pokemon.class))).thenReturn(pokemon);
    }

    @Test
    public void insertPokemon() {
        boolean result = pokemonService.insertPokemon(nombre, tipo1, tipo2, region);
        assertTrue(result);
    }

    
    @Test
    public void findPokemonByTypeAndRegion() {
        boolean insertResult = pokemonService.insertPokemon(nombre, tipo1, tipo2, region);
        assertTrue(insertResult);

        ArrayList<String> pokemonNames = pokemonService.FindPokemonByTypeAndRegion(tipo1, region);
        assertNotNull(pokemonNames);
        assertTrue(pokemonNames.contains(nombre));
    }
}
