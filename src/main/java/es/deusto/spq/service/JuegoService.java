package es.deusto.spq.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;


@Service
public class JuegoService {

    public String prueba() {
        return "Prueba";
    }



    public static void crearJuego() {
        ArrayList<String> tipos = new ArrayList<>();
        ArrayList<String> regiones = new ArrayList<>();
        ArrayList<String> lateral = new ArrayList<>();
        ArrayList<String> arriba = new ArrayList<>();

        


        for (int i = 0; i < 3; i++) {
            int randomIndex = (int) (Math.random() * tipos.size());
            int randomLista = (int) (Math.random() * 2);
            String tipo = tipos.get(randomIndex);
            arriba.add(tipo);
            tipos.remove(randomIndex);
            if (randomLista == 0) {
                int randomTipo = (int) (Math.random() * tipos.size());
                String tipo1 = tipos.get(randomTipo);
                lateral.add(tipo1);
                tipos.remove(randomTipo);
            } else {
                int randomRegion = (int) (Math.random() * regiones.size());
                String region = regiones.get(randomRegion);
                lateral.add(region);
                regiones.remove(randomRegion);
            }
        }

        System.out.println("Arriba: " + arriba);
        System.out.println("Lateral: " + lateral);

        for (String arribaElement : arriba) {
            for (String lateralElement : lateral) {
                //List<String> listaPokemons = obtenerLista(arribaElement, lateralElement);
                //System.out.println(listaPokemons);
            }
        }
        
    }

}
