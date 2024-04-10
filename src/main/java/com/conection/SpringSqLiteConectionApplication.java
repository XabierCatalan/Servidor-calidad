package com.conection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.conection.entities.Region;
import com.conection.entities.Tipo;
import com.conection.repository.PokemonRepository;
import com.conection.repository.RegionRepository;
import com.conection.repository.TipoRepository;




@SpringBootApplication
public class SpringSqLiteConectionApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringSqLiteConectionApplication.class, args);
	}

	@Autowired
	private TipoRepository tipoRepository;
	@Autowired
	private RegionRepository regionRepository;
	@Autowired
	private PokemonRepository pokemonRepository;

	@Bean
	CommandLineRunner init(){
		return args -> {
			pokemonRepository.findAll().forEach(pokemon ->{
				System.err.println(pokemon.toString());

			});
		};
	}

}
