/*package com.conection.services;

import static org.junit.Assert.assertEquals;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import com.conection.services.PokemonService;

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
        // Configurar el comportamiento simulado para el PreparedStatement y ResultSet
        when(mockConnection.prepareStatement(anyString())).thenReturn(mockStatement);
        when(mockStatement.executeQuery()).thenReturn(mockResultSet);

        // Configurar el resultado simulado para el ResultSet
        when(mockResultSet.next()).thenReturn(true).thenReturn(false); // Simular un solo resultado
        when(mockResultSet.getString("Nombre")).thenReturn("Pikachu"); // Nombre del Pokemon simulado

        // Crear una instancia del servicio con la conexión simulada
        pokemonService = new PokemonService(mockConnection);
    }

    @Test
    public void testFindPokemonByTypeAndRegion() throws Exception {
        // Llamar al método que queremos probar
        ArrayList<String> result = pokemonService.FindPokemonByTypeAndRegion(1, 1);

        // Verificar las interacciones esperadas con los mocks
        verify(mockConnection).prepareStatement(anyString());
        verify(mockStatement).setInt(1, 1);
        verify(mockStatement).setInt(2, 1);
        verify(mockStatement).setInt(3, 1);
        verify(mockStatement).executeQuery();

        // Verificar que se obtuvo el nombre correcto del Pokemon simulado
        assertEquals(1, result.size());
        assertEquals("Pikachu", result.get(0));
    }
}
*/