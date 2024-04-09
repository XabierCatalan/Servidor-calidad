package es.deusto.spq.controller;

import org.springframework.web.bind.annotation.RestController;

import es.deusto.spq.service.JuegoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



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
