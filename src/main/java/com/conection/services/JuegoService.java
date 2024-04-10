package com.conection.services;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.conection.entities.Region;
import com.conection.entities.Tipo;
import com.conection.repository.PokemonRepository;
import com.conection.repository.RegionRepository;
import com.conection.repository.TipoRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class JuegoService {
    @Autowired
	public TipoRepository tipoRepository;
	@Autowired
	public RegionRepository regionRepository;
	@Autowired
	public PokemonRepository pokemonRepository;

    @Autowired
    public PokemonService pokemonService;
    

    public String prueba() {
        return "Hola";
    }



    public HashMap<Integer , List<String>> crearJuego() {
        
        HashMap<Integer , List<String>> juego = new HashMap<>(); //hasmap donde el integer es la posicion en la matriz y list<String> es la lista de los nombres pokemons

        ArrayList<Tipo> TodosTipos = new ArrayList<>();
        ArrayList<Region> TodosRegiones = new  ArrayList<>(); 

        ArrayList<Region> lateral = new ArrayList<>();
        ArrayList<Tipo> arriba = new ArrayList<>(); //Guardamos el tipo entero

        tipoRepository.findAll().forEach(tipo ->{
            TodosTipos.add(tipo);
        });

        regionRepository.findAll().forEach(region ->{
            TodosRegiones.add(region);
        });
      


        for (int i = 0; i < 3; i++) {
            int randomRegion = (int) (Math.random() * TodosRegiones.size());
            int randomTipo = (int) (Math.random() * TodosTipos.size());

            arriba.add(TodosTipos.get(randomTipo));
            TodosTipos.remove(randomTipo);

            lateral.add(TodosRegiones.get(randomRegion));
            TodosRegiones.remove(randomRegion);
            
        }
 

        for (Tipo tipo : arriba) {
            for (Region region : lateral) {
                
                ArrayList<String> listaPokemons = pokemonService.FindPokemonByTypeAndRegion(tipo.getId(), region.getId());

                if (listaPokemons.isEmpty()) {
                    listaPokemons.add("NINGUNO");
                }

                juego.put(juego.size() + 1 , listaPokemons);
                
            }
        }



        return juego;
        
    }

    /*public void crearJuego() {
        
        ArrayList<String> lateral = new ArrayList<>();
        ArrayList<String> arriba = new ArrayList<>();

        for (int i = 0; i < 3; i++) {
            int randomIndex = (int) (Math.random() * tipos.size());
            int randomLista = (int) (Math.random() * 2);
            String tipo = tipos.get(randomIndex).getTipo();
            arriba.add(tipo);
            tipos.remove(randomIndex);
            if (randomLista == 0) {
                int randomTipo = (int) (Math.random() * tipos.size());
                String tipo1 = tipos.get(randomTipo).getTipo();
                lateral.add(tipo1);
                tipos.remove(randomTipo);
            } else {
                int randomRegion = (int) (Math.random() * regiones.size());
                String region = regiones.get(randomRegion).getNombre();
                lateral.add(region);
                regiones.remove(randomRegion);
            }
        }

        System.out.println("Arriba: " + arriba);
        System.out.println("Lateral: " + lateral);

        /*for (String arribaElement : arriba) {
            for (String lateralElement : lateral) {
                //List<String> listaPokemons = obtenerLista(arribaElement, lateralElement);
                //System.out.println(listaPokemons);
            }
        }*
        
    } */

}

