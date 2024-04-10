package com.conection.controller;
import org.springframework.web.bind.annotation.RestController;

import com.conection.entities.Tipo;
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





}


