package com.conection.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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

    private ArrayList<Tipo> todosTipos = new ArrayList<>();
    private ArrayList<Region> todosRegiones = new  ArrayList<>(); 

    private ArrayList<Region> lateral = new ArrayList<>();
    private ArrayList<Tipo> arriba = new ArrayList<>(); 

    private ArrayList<String> lateralNombre;
    private ArrayList<String> arribaNombre; 

    public HashMap<Integer , List<String>> crearJuego() {
        
        HashMap<Integer , List<String>> juego = new HashMap<>(); //hasmap donde el integer es la posicion en la matriz y list<String> es la lista de los nombres pokemons



        lateralNombre = new ArrayList<>();
        arribaNombre = new ArrayList<>();

        tipoRepository.findAll().forEach(tipo ->{
            todosTipos.add(tipo);
        });

        regionRepository.findAll().forEach(region ->{
            todosRegiones.add(region);
        });

        ArrayList<Tipo> tipos = todosTipos;
        ArrayList<Region> regiones = todosRegiones; 
        Set<Integer> selectedTipoIndices = new HashSet<>();
        Set<Integer> selectedRegionIndices = new HashSet<>();
      
        for (int i = 0; i < 3; i++) {
            int randomTipoIndex;
            do {
                randomTipoIndex = (int) (Math.random() * tipos.size());
            } while (selectedTipoIndices.contains(randomTipoIndex));
            selectedTipoIndices.add(randomTipoIndex);

            int randomRegionIndex;
            do {
                randomRegionIndex = (int) (Math.random() * regiones.size());
            } while (selectedRegionIndices.contains(randomRegionIndex));
            selectedRegionIndices.add(randomRegionIndex);


            Tipo tipoSeleccionado = tipos.get(randomTipoIndex);
            arriba.add(tipoSeleccionado);
            arribaNombre.add(tipoSeleccionado.getTipo());

            Region regionSeleccionada = regiones.get(randomRegionIndex);
            lateral.add(regionSeleccionada);
            lateralNombre.add(regionSeleccionada.getRegion());
        
            
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

    public List<String> getCondicionesTipo(){
        System.out.println(arribaNombre);
        return arribaNombre;
    }

    public List<String> getCondicionesRegion(){
        return lateralNombre;
    }

}

