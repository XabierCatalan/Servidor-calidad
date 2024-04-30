package com.conection.controller;
import org.springframework.web.bind.annotation.RestController;

import com.conection.entities.Region;
import com.conection.entities.Tipo;
import com.conection.entities.Usuario;
import com.conection.repository.PokemonRepository;
import com.conection.repository.RegionRepository;
import com.conection.repository.TipoRepository;
import com.conection.repository.UsuarioRepository;
import com.conection.services.JuegoService;
import com.conection.services.UsuarioService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



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
    @Autowired
	private UsuarioRepository UsuarioRepository;
    @Autowired
	private UsuarioService UsuarioService;

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

    @RequestMapping("/condicionTipo")
    public List<String> getCondicionesTipo() {
        List<String> condicionesTipo = juegoService.getCondicionesTipo();

        return condicionesTipo;
    }

    @RequestMapping("/condicionRegion")
    public List<String> getCondicionesRegion() {
        List<String> condicionesRegion = juegoService.getCondicionesRegion();

        return condicionesRegion;
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
 
    //dependiendo del mensaje que le llegue al cliente pasara una cosa en la ventana de registro u otra
    @RequestMapping("/registrar")
    public String registrar(@RequestParam (name = "correo") String correo,
                                    @RequestParam (name = "contra") String contra) {
        System.out.println(correo + " " + contra);
        boolean existe = UsuarioService.checkUsuarioByCorreoContra(correo, contra);
        System.out.println(existe);
        String mensaje;
        if (!existe) {
           
            boolean metido = UsuarioService.insertUsuario(correo, contra, 1); //nivel 1 por defecto

            if (metido) {
                mensaje = "Usuario registrado";
                return mensaje;
            } else {
                mensaje = "Error al registrar";
                return mensaje;
            }
           
        }
        mensaje = "Usuario ya Existe";
        return mensaje;
    }

    @RequestMapping("/iniciarSesion")
    public boolean iniciarSesion(@RequestParam (name = "correo") String correo,
                                    @RequestParam (name = "contra") String contra) {
        boolean existe = UsuarioService.checkUsuarioByCorreoContra(correo, contra);
        if (existe) {
           
            return true;
        }
        
        return false;
    }

    


    





}


