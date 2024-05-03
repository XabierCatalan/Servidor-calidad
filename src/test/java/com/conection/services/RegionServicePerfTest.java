package com.conection.services;

import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.Test;
import org.junit.experimental.categories.Category;

import com.conection.categories.PerformanceTest;
import com.github.noconnor.junitperf.JUnitPerfTest;
import com.github.noconnor.junitperf.JUnitPerfTestRequirement;

@Category(PerformanceTest.class)
public class RegionServicePerfTest {
    @Test
    @JUnitPerfTest(threads = 20, durationMs = 3000)
    @JUnitPerfTestRequirement(meanLatency = 50) // Adaptar el valor según rendimiento esperado
    public void testInsertRegion_Performance() throws Exception {
        // No se requiere configuración de mocks en este caso (sin interacción con repositorios)

        // Crear una instancia de RegionService
        RegionService regionService = new RegionService();

        // Dato de prueba para la región
        String regionNueva = "Nueva región";

        // Ejecutar el test
        long startTime = System.currentTimeMillis();
        for (int i = 0; i < 100; i++) { // Repetir 100 veces para simular carga (ajustar según necesario)
            boolean insertado = regionService.insertRegion(regionNueva);
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
    public void testGetIDRegionByName_Performance() throws Exception {
        // No se requiere configuración de mocks en este caso (sin interacción con repositorios)

        // Crear una instancia de RegionService
        RegionService regionService = new RegionService();

        // Dato de prueba para el nombre de la región (asume que existe en la base de datos)
        String nombreRegion = "Nueva región";

        // Ejecutar el test
        long startTime = System.currentTimeMillis();
        for (int i = 0; i < 100; i++) { // Repetir 100 veces para simular carga (ajustar según necesario)
            int idRegion = regionService.getIDRegionByName(nombreRegion);
            assertTrue(idRegion > -1); // Verificar que se haya encontrado un ID válido
        }
        long endTime = System.currentTimeMillis();

        // Verificación del rendimiento
        long totalTime = endTime - startTime;
        double averageLatency = (double) totalTime / 100; // 100 iteraciones realizadas
        assertTrue(averageLatency < 30); // Adaptar el valor según requisito especificado en @JUnitPerfTestRequirement
    }

/*@Test
@JUnitPerfTest(threads = 20, durationMs = 3000)
@JUnitPerfTestRequirement(meanLatency = 50)
public void testUpdateRegion_Performance() throws Exception {
    RegionService regionService = new RegionService();

    String oldRegionName = "Nueva región";
    String newRegionName = "Región Actualizada";

    regionService.insertRegion(oldRegionName); // Insertar la región antes de actualizarla

    long startTime = System.currentTimeMillis();
    for (int i = 0; i < 100; i++) {
        boolean actualizado = regionService.updateRegion(oldRegionName, newRegionName);
        assertTrue(actualizado);
    }
    long endTime = System.currentTimeMillis();

    long totalTime = endTime - startTime;
    double averageLatency = (double) totalTime / 100;
    assertTrue(averageLatency < 50);
}*/

}
