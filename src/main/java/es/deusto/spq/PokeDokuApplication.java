package es.deusto.spq;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Import;

import es.deusto.spq.config.DataSourceConfig;

@SpringBootApplication
@ComponentScan(basePackages = "es.deusto.spq")
public class PokeDokuApplication implements CommandLineRunner {

    public static void main(String[] args) {
        SpringApplication.run(PokeDokuApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        System.out.println("¡Servidor Iniciado correctamente!");
    }
}