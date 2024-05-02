package com.conection.services;

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
    @JUnitPerfTest(threads = 20, durationMs = 5000) // Adjust threads and duration as needed
    @JUnitPerfTestRequirement(meanLatency = 300) // Adaptar el valor según rendimiento esperado
    public void testCrearJuegoPerformance() throws Exception {
        // Mock PokemonService behavior to return empty lists efficiently
        Pokemon p = new Pokemon();
        ArrayList<String> al = new ArrayList<>();
        al.add(p.getNombre());
        Mockito.when(pokemonService.FindPokemonByTypeAndRegion(anyInt(), anyInt())).thenReturn(al);

        // Ejecutar el test
        long startTime = System.currentTimeMillis();
        for (int i = 0; i < 50; i++) { // Repetir 50 veces para simular carga (adjust as needed)
            juegoService.crearJuego();
        }
        long endTime = System.currentTimeMillis();

        // Verificación del rendimiento
        long totalTime = endTime - startTime;
        double averageLatency = (double) totalTime / 50; // 50 iteraciones realizadas
        assertTrue(averageLatency < 300); // Adaptar el valor según requisito especificado en @JUnitPerfTestRequirement
    }

    @Test
    @JUnitPerfTest(threads = 20, durationMs = 1000) // Adjust threads and duration as needed
    @JUnitPerfTestRequirement(meanLatency = 10) // Adaptar el valor según rendimiento esperado
    public void testGetCondicionesTipoPerformance() {
    
        // Ejecutar el test
        long startTime = System.currentTimeMillis();
        for (int i = 0; i < 1000; i++) { // Repetir 1000 veces para simular carga (adjust as needed)
            juegoService.getCondicionesTipo();
        }
        long endTime = System.currentTimeMillis();
    
        // Verificación del rendimiento
        long totalTime = endTime - startTime;
        double averageLatency = (double) totalTime / 1000; // 1000 iteraciones realizadas
        assertTrue(averageLatency < 10); // Adaptar el valor según requisito especificado en @JUnitPerfTestRequirement
    }

    @Test
    @JUnitPerfTest(threads = 20, durationMs = 1000) // Ajustar threads y duration según necesidad
    @JUnitPerfTestRequirement(meanLatency = 10) // Adaptar el valor según rendimiento esperado
    public void testGetCondicionesRegionPerformance() throws Exception {

        // Ejecutar el test
        long startTime = System.currentTimeMillis();
        for (int i = 0; i < 1000; i++) { // Repetir 1000 veces para simular carga (ajustar según necesidad)
            juegoService.getCondicionesRegion();
        }
        long endTime = System.currentTimeMillis();

        // Verificación del rendimiento
        long totalTime = endTime - startTime;
        double averageLatency = (double) totalTime / 1000; // 1000 iteraciones realizadas
        assertTrue(averageLatency < 10); // Adaptar el valor según requisito especificado en @JUnitPerfTestRequirement
    }
}