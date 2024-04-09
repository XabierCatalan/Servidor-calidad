package es.deusto.spq.controller;

import org.springframework.web.bind.annotation.RestController;

import es.deusto.spq.service.JuegoService;

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


    
    
    
}
