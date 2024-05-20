/*package com.conection.services;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.datanucleus.store.types.wrappers.HashMap;
import org.junit.Rule;
import org.junit.Test;
import org.mockito.Mockito;
import org.springframework.http.ResponseEntity;

import com.conection.entities.Pokemon;
import com.conection.entities.Usuario;
import com.conection.repository.PokemonRepository;
import com.conection.repository.RegionRepository;
import com.conection.repository.TipoRepository;
import com.conection.repository.UsuarioRepository;
import com.github.noconnor.junitperf.JUnitPerfTest;
import com.github.noconnor.junitperf.JUnitPerfTestRequirement;
import com.github.noconnor.junitperf.reporting.providers.ConsoleReportGenerator;

public class JuegoServicePerfTest {
    public JuegoService juegoService = new JuegoService();
    public PokemonService pokemonService = new PokemonService();

    @Test
    @JUnitPerfTest(threads = 20, durationMs = 3000) // Adjust threads and duration as needed
    @JUnitPerfTestRequirement(meanLatency = 100) // Adaptar el valor según rendimiento esperado
    public void testFindAllTiposPerformance() throws Exception {
        // No need to mock repositories for this test

        // Ejecutar el test
        long startTime = System.currentTimeMillis();
        for (int i = 0; i < 100; i++) { // Repetir 100 veces para simular carga (ajustar según necesario)
            juegoService.findAllTipos();
        }
        long endTime = System.currentTimeMillis();

        // Verificación del rendimiento
        long totalTime = endTime - startTime;
        double averageLatency = (double) totalTime / 100; // 100 iteraciones realizadas
        assertTrue(averageLatency < 100); // Adaptar el valor según requisito especificado en @JUnitPerfTestRequirement
    }

    @Test
    @JUnitPerfTest(threads = 20, durationMs = 3000) // Adjust threads and duration as needed
    @JUnitPerfTestRequirement(meanLatency = 100) // Adaptar el valor según rendimiento esperado
    public void testFindAllRegionPerformance() throws Exception {
        // No need to mock repositories for this test

        // Ejecutar el test
        long startTime = System.currentTimeMillis();
        for (int i = 0; i < 100; i++) { // Repetir 100 veces para simular carga (ajustar según necesario)
            juegoService.findAllRegion();
        }
        long endTime = System.currentTimeMillis();

        // Verificación del rendimiento
        long totalTime = endTime - startTime;
        double averageLatency = (double) totalTime / 100; // 100 iteraciones realizadas
        assertTrue(averageLatency < 100); // Adaptar el valor según requisito especificado en @JUnitPerfTestRequirement
    }

    @Test
    @JUnitPerfTest(threads = 20, durationMs = 3000)
    @JUnitPerfTestRequirement(meanLatency = 50) // Ajustar valor de latencia según sea necesario
    public void testCrearJuegoPerformance() throws Exception {
        // Crear una instancia de JuegoService
        JuegoService juegoService = new JuegoService();
    
        // Ejecutar el test
        long startTime = System.currentTimeMillis();
        for (int i = 0; i < 100; i++) { // Repetir 100 veces para simular carga (ajustar según sea necesario)
            HashMap<Integer, List<String>> juego = (HashMap<Integer, List<String>>) juegoService.crearJuego();
            // Verificar la generación de la matriz del juego
            assertTrue(juego.size() == 9); // Número esperado de posiciones en la matriz
            assertTrue(juego.values().stream().allMatch(list -> !list.isEmpty())); // Asegurar que cada posición tiene al menos un Pokémon
        }
        long endTime = System.currentTimeMillis();
    
        // Calcular métricas de rendimiento
        long totalTime = endTime - startTime;
        double averageLatency = (double) totalTime / 100; // 100 iteraciones realizadas
        assertTrue(averageLatency < 50); // Adaptar valor de latencia según @JUnitPerfTestRequirement
    }

    @Test
@JUnitPerfTest(threads = 20, durationMs = 3000)
@JUnitPerfTestRequirement(meanLatency = 20) // Adjust latency value as needed
public void testGetCondicionesTipo_Performance() throws Exception {
    // Create an instance of JuegoService
    JuegoService juegoService = new JuegoService();

    // Generate a game matrix
    HashMap<Integer, List<String>> juego = (HashMap<Integer, List<String>>) juegoService.crearJuego();

    // Execute the test
    long startTime = System.currentTimeMillis();
    for (int i = 0; i < 100; i++) { // Repeat 100 times to simulate load (adjust as needed)
        List<String> condicionesTipo = juegoService.getCondicionesTipo();
        // Verify conditions retrieval
        assertTrue(condicionesTipo.size() == 3); // Expected number of type conditions
        assertTrue(condicionesTipo.stream().allMatch(condition -> !condition.isEmpty())); // Ensure each condition is not empty
    }
    long endTime = System.currentTimeMillis();

    // Calculate performance metrics
    long totalTime = endTime - startTime;
    double averageLatency = (double) totalTime / 100; // 100 iterations performed
    assertTrue(averageLatency < 20); // Adapt latency value according to @JUnitPerfTestRequirement
}

@Test
@JUnitPerfTest(threads = 20, durationMs = 3000)
@JUnitPerfTestRequirement(meanLatency = 20) // Adjust latency value as needed
public void testGetCondicionesRegion_Performance() throws Exception {
    // Create an instance of JuegoService
    JuegoService juegoService = new JuegoService();

    // Generate a game matrix
    HashMap<Integer, List<String>> juego = (HashMap<Integer, List<String>>) juegoService.crearJuego();

    // Execute the test
    long startTime = System.currentTimeMillis();
    for (int i = 0; i < 100; i++) { // Repeat 100 times to simulate load (adjust as needed)
        List<String> condicionesRegion = juegoService.getCondicionesRegion();
        // Verify conditions retrieval
        assertTrue(condicionesRegion.size() == 3); // Expected number of region conditions
        assertTrue(condicionesRegion.stream().allMatch(condition -> !condition.isEmpty())); // Ensure each condition is not empty
    }
    long endTime = System.currentTimeMillis();

    // Calculate performance metrics
    long totalTime = endTime - startTime;
    double averageLatency = (double) totalTime / 100; // 100 iterations performed
    assertTrue(averageLatency < 20); // Adapt latency value according to @JUnitPerfTestRequirement
}
}
*/




