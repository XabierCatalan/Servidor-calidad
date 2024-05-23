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
import com.conection.services.PokemonService;
import com.conection.services.RegionService;
import com.conection.services.TipoService;
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
	private UsuarioRepository usuarioRepository;
    @Autowired
	private UsuarioService usuarioService;
    @Autowired
	private RegionService regionService;
    @Autowired
	private TipoService tipoService;
    @Autowired
	private PokemonService pokemonService;

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

    @RequestMapping("/listatiposNombres")
    public ArrayList<String> listatiposNombres() {
        ArrayList<String> lista = new ArrayList<String>();

        tipoRepository.findAll().forEach(tipo ->{
            lista.add(tipo.getTipo());

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

    @RequestMapping("/listaregionNombres")
    public ArrayList<String> listaregionNombres() {
        ArrayList<String> lista = new ArrayList<String>();

        regionRepository.findAll().forEach(region ->{
            lista.add(region.getRegion());

        });

        return lista;
    }
 
    //dependiendo del mensaje que le llegue al cliente pasara una cosa en la ventana de registro u otra
    @RequestMapping("/registrar")
    public String registrar(@RequestParam (name = "correo") String correo,
                                    @RequestParam (name = "contra") String contra) {
        
        boolean existe = usuarioService.checkUsuarioByCorreoContra(correo, contra);
        String mensaje;
        if (!existe) {
           
            boolean metido = usuarioService.insertUsuario(correo, contra, 1); //nivel 1 por defecto

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
    public String iniciarSesion(@RequestParam (name = "correo") String correo,
                                    @RequestParam (name = "contra") String contra) {
        Usuario user = usuarioService.getUsuarioByCorreoContra(correo, contra);
        String mensaje = "";
        if (user == null) {
           mensaje = "Usuario no existe";
        } else if (user.getNivel() == 1) {
            mensaje = "Jugador";
        } else  if (user.getNivel() == 2){
            mensaje = "Admin";
        }

        return mensaje;
        
    }

    @RequestMapping("/InsertRegion")
    public String InsertRegion(@RequestParam (name = "region") String region) {
        
        boolean metido = regionService.insertRegion(region);
        String mensaje;
        if (metido) {
            mensaje = "Region registrada";
            return mensaje;
        } else {
            mensaje = "Error al insertar";
            return mensaje;
        }
    }

    @RequestMapping("/InsertTipo")
    public String InsertTipo(@RequestParam (name = "tipo") String Tipo) {
        
        boolean metido = tipoService.InsertTipo(Tipo);
        String mensaje;
        if (metido) {
            mensaje = "Tipo registrado";
            return mensaje;
        } else {
            mensaje = "Error al insertar";
            return mensaje;
        }
    }

    @RequestMapping("/InsertUsuario")
    public String InsertUsuario(@RequestParam (name = "Correo") String correo,
                                @RequestParam (name = "Contra") String contra,
                                @RequestParam (name = "nivel") String nivel) {

        boolean existe = usuarioService.checkUsuarioByCorreoContra(correo, contra);
        
        if (!existe) {
            boolean metido = usuarioService.insertUsuario(correo, contra, Integer.parseInt(nivel));
            String mensaje;
            if (metido) {
                mensaje = "Usuario Insertado";
                return mensaje;
            } else {
                mensaje = "Error al insertar el Usuaruo desde el admin";
                return mensaje;
            }
        } else {
            return "Usuario ya existe";
            
        }
        
        
    }

    @RequestMapping("/InsertPokemon")
    public String InsertPokemon(@RequestParam (name = "nombre") String nombre,
                                @RequestParam (name = "tipo1") String tipo1,
                                @RequestParam (name = "tipo2") String tipo2,
                                @RequestParam (name = "region") String region) {
        
        int tipo1_ = tipoService.getIDTipoByName(tipo1);
        int tipo2_ = tipoService.getIDTipoByName(tipo2);
        int region_ = regionService.getIDRegionByName(region);
        
        
        
        boolean metido = pokemonService.insertPokemon(nombre, tipo1_, tipo2_, region_);

        

        String mensaje;
        if (metido) {
            mensaje = "Pokemon Insertado";
            return mensaje;
        } else {
            mensaje = "Error al insertar el Pokemon desde el admin";
            return mensaje;
        }
    }



    @RequestMapping("/getUsuarios")
    public ArrayList<String> getUsuarios() {
        ArrayList<String> lista = usuarioService.getUsuarios();
        

        

        return lista;
    }
    


    





}


