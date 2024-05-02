package com.conection.services;



import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.when;

import java.util.Optional;

import org.junit.Rule;
import org.junit.Test;
import org.mockito.Mockito;
import org.springframework.http.ResponseEntity;

import com.conection.entities.Usuario;
import com.conection.repository.UsuarioRepository;
import com.github.noconnor.junitperf.JUnitPerfTest;
import com.github.noconnor.junitperf.JUnitPerfTestRequirement;
import com.github.noconnor.junitperf.reporting.providers.ConsoleReportGenerator;

public class UsuarioServicePerfTest {

    public UsuarioRepository usuarioRepository;

    @Test
        @JUnitPerfTest(threads = 20, durationMs = 3000)
        @JUnitPerfTestRequirement(meanLatency = 200) // Adaptar el valor según rendimiento esperado
        public void testCheckUsuarioByCorreoContra_Performance() throws Exception {
            // Configuración del mock para UsuarioRepository (simulación de acceso a BD)
            Usuario mockUsuario = new Usuario(1, "o.perez@opendeusto.es", "o.perez", 2);
            UsuarioRepository mockRepository = Mockito.mock(UsuarioRepository.class);
            if (mockRepository.existsById(0)) {
                Mockito.when(mockRepository.findById(0)).thenReturn(Optional.of(mockUsuario));
              } else {
                Mockito.when(mockRepository.findById(0)).thenReturn(Optional.empty());
              }
              

            // Inyectar mockUsuarioRepository en la clase a testear (UsuarioService)
            UsuarioService usuarioService = new UsuarioService(); // Crear una instancia vacía
            usuarioService.setUsuarioRepository(mockRepository);

            // Datos de prueba
            String correoValido = "o.perez@opendeusto.es";
            String contraseñaValida = "o.perez";

            // Ejecutar el test
            long startTime = System.currentTimeMillis();
            for (int i = 0; i < 100; i++) { // Repetir 100 veces para simular carga (ajustar según necesario)
                boolean usuarioValido = usuarioService.checkUsuarioByCorreoContra(correoValido, contraseñaValida);
                assertTrue(usuarioValido);
            }
            long endTime = System.currentTimeMillis();

            // Verificación del rendimiento
            long totalTime = endTime - startTime;
            double averageLatency = (double) totalTime / 100; // 100 iteraciones realizadas
            assertTrue(averageLatency < 200); // Adaptar el valor según requisito especificado en @JUnitPerfTestRequirement
        }

        @Test
        @JUnitPerfTest(threads = 20, durationMs = 3000)
        @JUnitPerfTestRequirement(meanLatency = 100) // Adaptar el valor según rendimiento esperado
        public void testInsertUsuario_Performance() throws Exception {
            // Inyectar mockUsuarioRepository en la clase a testear (UsuarioService)
            UsuarioService usuarioService = new UsuarioService(); // Crear una instancia vacía
            // usuarioService.setUsuarioRepository(mockRepository); // Inyectar el mock si lo utilizas
        
            // Datos de prueba
            String correoValido = "correo@ejemplo.com";
            String contraseñaValida = "contraseñaSegura";
            Integer nivelUsuario = 1;
        
            // Ejecutar el test
            long startTime = System.currentTimeMillis();
            for (int i = 0; i < 100; i++) { // Repetir 100 veces para simular carga (ajustar según necesario)
                boolean usuarioInsertado = usuarioService.insertUsuario(correoValido, contraseñaValida, nivelUsuario);
                assertTrue(usuarioInsertado);
            }
            long endTime = System.currentTimeMillis();
        
            // Verificación del rendimiento
            long totalTime = endTime - startTime;
            double averageLatency = (double) totalTime / 100; // 100 iteraciones realizadas
            assertTrue(averageLatency < 100); // Adaptar el valor según requisito especificado en @JUnitPerfTestRequirement
        }
        
        @Test
        @JUnitPerfTest(threads = 20, durationMs = 3000)
        @JUnitPerfTestRequirement(meanLatency = 100) // Adaptar el valor según rendimiento esperado
        public void testGetUsuarioByCorreoContra_Performance() throws Exception {
        
            // Inyectar mockUsuarioRepository en la clase a testear (UsuarioService)
            UsuarioService usuarioService = new UsuarioService(); // Crear una instancia vacía
        
            // Datos de prueba
            String correoValido = "correo@ejemplo.com";
            String contraseñaValida = "contraseñaSegura";
        
            // Ejecutar el test
            long startTime = System.currentTimeMillis();
            for (int i = 0; i < 100; i++) { // Repetir 100 veces para simular carga (ajustar según necesario)
                Usuario usuarioEncontrado = usuarioService.getUsuarioByCorreoContra(correoValido, contraseñaValida);
            }
            long endTime = System.currentTimeMillis();
        
            // Verificación del rendimiento
            long totalTime = endTime - startTime;
            double averageLatency = (double) totalTime / 100; // 100 iteraciones realizadas
            assertTrue(averageLatency < 100); // Adaptar el valor según requisito especificado en @JUnitPerfTestRequirement
        }
}


