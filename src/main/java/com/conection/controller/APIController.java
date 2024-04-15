package com.conection.controller;
import org.springframework.web.bind.annotation.RestController;

import com.conection.entities.Pokemon;
import com.conection.entities.Region;
import com.conection.entities.Tipo;
import com.conection.repository.PokemonRepository;
import com.conection.repository.RegionRepository;
import com.conection.repository.TipoRepository;
import com.conection.services.JuegoService;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;



@RestController
public class APIController {

    @Autowired
    private JuegoService juegoService;
    @Autowired
	private PokemonRepository pokemonRepository;
    @Autowired
	private TipoRepository tipoRepository;
	@Autowired
	private RegionRepository regionRepository;

    @RequestMapping("/test")
    public String holaMundo() {
        return new String("Hola Mundo");
    }

    @RequestMapping("/prueba")
    public String prueba() {
        return juegoService.prueba();
    }

    @RequestMapping("/crearJuego")
    public HashMap<Integer , List<String>> crearJuego() {
        HashMap<Integer , List<String>> juego = juegoService.crearJuego();

        return juego;
    }

    @RequestMapping("/listap")
    public ArrayList<String> listap() {
        ArrayList<String> lista = new ArrayList<String>();

        pokemonRepository.findAll().forEach(pokemon ->{
            lista.add(pokemon.getNombre());
            
        });

        return lista;
    }

    @RequestMapping("/listat")
    public ArrayList<Tipo> listat() {
        ArrayList<Tipo> lista = new ArrayList<Tipo>();

        tipoRepository.findAll().forEach(tipo ->{
            lista.add(tipo);

        });

        return lista;
    }

    @RequestMapping("/listar")
    public ArrayList<Region> listar() {
        ArrayList<Region> lista = new ArrayList<Region>();

        regionRepository.findAll().forEach(region ->{
            lista.add(region);

        });

        return lista;
    }

    





}


