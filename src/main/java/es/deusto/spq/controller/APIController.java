package es.deusto.spq.controller;

import org.springframework.web.bind.annotation.RestController;

import es.deusto.spq.service.JuegoService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@RestController
public class APIController {
    private JuegoService juegoService;

    @RequestMapping("/test")
    public String requestMethodName() {
        return new String("Hola Mundo");
    }
    
    
    
}
