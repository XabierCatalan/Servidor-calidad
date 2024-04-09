package es.deusto.spq.service;

import java.util.ArrayList;
import java.util.List;

import es.deusto.spq.model.Region;
import es.deusto.spq.model.Tipo;

import org.springframework.stereotype.Service;


@Service
public class JuegoService {
    private final TipoService tipoService;
    private final RegionService regionService;

    public JuegoService(TipoService tipoService, RegionService regionService) {
        this.tipoService = tipoService;
        this.regionService = regionService;
    }

    public String prueba() {
        return tipoService.getTipoById(1).getTipo();
    }

    public void crearJuego() {
        List<Tipo> tipos = tipoService.getAllTipos();
        List<Region> regiones = regionService.getAllRegions();
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
        }*/
        
    }

}
