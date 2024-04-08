package es.deusto.spq;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class PokeDokuApplication implements CommandLineRunner {

    public static void main(String[] args) {
        SpringApplication.run(PokeDokuApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        // TODO Auto-generated method stub
        System.out.println("¡Servidor Iniciado correctamente!");
    }
}