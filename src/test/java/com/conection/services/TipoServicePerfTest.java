package com.conection.services;

import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.Test;
import org.junit.experimental.categories.Category;

import com.conection.categories.PerformanceTest;
import com.github.noconnor.junitperf.JUnitPerfTest;
import com.github.noconnor.junitperf.JUnitPerfTestRequirement;

@Category(PerformanceTest.class)
public class TipoServicePerfTest {
    
    @Test
    @JUnitPerfTest(threads = 20, durationMs = 3000)
    @JUnitPerfTestRequirement(meanLatency = 50) // Adaptar el valor según rendimiento esperado
    public void testInsertTipo_Performance() throws Exception {

        TipoService tipoService = new TipoService();

        // Dato de prueba para el tipo
        String tipoNuevo = "Tipo de prueba";

        // Ejecutar el test
        long startTime = System.currentTimeMillis();
        for (int i = 0; i < 100; i++) { 
            boolean insertado = tipoService.InsertTipo(tipoNuevo);
            assertTrue(insertado);
        }
        long endTime = System.currentTimeMillis();

        // Verificación del rendimiento
        long totalTime = endTime - startTime;
        double averageLatency = (double) totalTime / 100; // 100 iteraciones realizadas
        assertTrue(averageLatency < 50); // Adaptar el valor según requisito especificado en @JUnitPerfTestRequirement
    }

    @Test
    @JUnitPerfTest(threads = 20, durationMs = 3000)
    @JUnitPerfTestRequirement(meanLatency = 30) // Adaptar el valor según rendimiento esperado
    public void testGetIDTipoByName_Performance() throws Exception {
        // No se requiere configuración de mocks en este caso (sin interacción con repositorios)

        // Crear una instancia de TipoService
        TipoService tipoService = new TipoService();

        // Dato de prueba para el nombre del tipo (asume que existe en la base de datos)
        String nombreTipo = "Tipo de prueba";

        // Ejecutar el test
        long startTime = System.currentTimeMillis();
        for (int i = 0; i < 100; i++) { // Repetir 100 veces para simular carga (ajustar según necesario)
            int idTipo = tipoService.getIDTipoByName(nombreTipo);
            assertTrue(idTipo > -1); // Verificar que se haya encontrado un ID válido
        }
        long endTime = System.currentTimeMillis();

        // Verificación del rendimiento
        long totalTime = endTime - startTime;
        double averageLatency = (double) totalTime / 100; // 100 iteraciones realizadas
        assertTrue(averageLatency < 30); // Adaptar el valor según requisito especificado en @JUnitPerfTestRequirement
    }

}
