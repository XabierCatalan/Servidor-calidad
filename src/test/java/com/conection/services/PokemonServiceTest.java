/*package com.conection.services;

import static org.junit.Assert.*;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;



@RunWith(MockitoJUnitRunner.class)
public class PokemonServiceTest {

    @Mock
    private Connection mockConnection;

    @Mock
    private PreparedStatement mockStatement;

    @Mock
    private ResultSet mockResultSet;

    private PokemonService pokemonService;

    @Before
    public void setUp() throws Exception {
        // Configure mock behavior for PreparedStatement and ResultSet
        when(mockConnection.prepareStatement(anyString())).thenReturn(mockStatement);
        when(mockStatement.executeQuery()).thenReturn(mockResultSet);

        // Configure mock results for ResultSet (example with one result)
        when(mockResultSet.next()).thenReturn(true).thenReturn(false); // Simulate one result
        when(mockResultSet.getString("Nombre")).thenReturn("Pikachu"); // Simulated Pokemon name
    }

    @Test
    public void testFindPokemonByTypeAndRegion() throws Exception {
    // Datos de entrada
    int tipoEsperado = 1;
    int regionEsperada = 1;

    // Configurar mocks
    when(mockResultSet.next()).thenReturn(true).thenReturn(false); // Simula un solo resultado
    when(mockResultSet.getString("Nombre")).thenReturn("Pikachu"); // Nombre del Pokemon simulado

    // Ejecutar el método
    ArrayList<String> nombresPokemonObtenidos = pokemonService.FindPokemonByTypeAndRegion(tipoEsperado, regionEsperada);

    // Verificar resultados
    assertEquals(1, nombresPokemonObtenidos.size()); // Verificar que se obtuvo un solo nombre
    assertEquals("Pikachu", nombresPokemonObtenidos.get(0)); // Verificar el nombre del Pokemon

    // Verificar llamadas a métodos
    verify(mockConnection).prepareStatement(anyString()); // Verificar que se creó un PreparedStatement
    verify(mockStatement).setInt(1, tipoEsperado); // Verificar que se estableció el tipo 1
    verify(mockStatement).setInt(2, tipoEsperado); // Verificar que se estableció el tipo 2
    verify(mockStatement).setInt(3, regionEsperada); // Verificar que se estableció la región
    verify(mockStatement).executeQuery(); // Verificar que se ejecutó la consulta
    }   

    // Add a new test for empty result set (no Pokemon found)
    @Test
    public void testFindPokemonByTypeAndRegion_NoResults() throws Exception {
        when(mockResultSet.next()).thenReturn(false);

        // Call the method to test
        ArrayList<String> result = pokemonService.FindPokemonByTypeAndRegion(1, 1);

        // Verify interactions with mocks (query execution should still happen)
        verify(mockConnection).prepareStatement(anyString());
        verify(mockStatement).setInt(1, 1);
        verify(mockStatement).setInt(2, 1);
        verify(mockStatement).setInt(3, 1);
        verify(mockStatement).executeQuery();

        // Verify empty list is returned
        assertEquals(0, result.size());
    }

    // Add a new test for SQLException (database error)
    @Test(expected = SQLException.class) // Test expects a SQLException to be thrown
    public void testFindPokemonByTypeAndRegion_DatabaseError() throws Exception {
        // Simulate SQLException when creating PreparedStatement
        when(mockConnection.prepareStatement(anyString())).thenThrow(SQLException.class);

        // Call the method to test (should throw the exception)
        pokemonService.FindPokemonByTypeAndRegion(1, 1);
    }
}
*/