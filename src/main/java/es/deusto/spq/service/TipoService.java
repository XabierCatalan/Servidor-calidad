package es.deusto.spq.service;

import org.springframework.stereotype.Service;
import java.util.List;
import es.deusto.spq.dao.TipoRepository;
import es.deusto.spq.model.Tipo;

@Service
public class TipoService {

    private final TipoRepository tipoRepository;

    public TipoService(TipoRepository tipoRepository) {
        this.tipoRepository = tipoRepository;
    }

    // Métodos de servicio para operaciones relacionadas con la entidad Tipo
    public List<Tipo> getAllTipos() {
        return tipoRepository.findAll();
    }

    public Tipo saveTipo(Tipo tipo) {
        return tipoRepository.save(tipo);
    }

    public Tipo getTipoById(Integer id) {
        return tipoRepository.findById(id).orElse(null);
    }

    public void deleteTipoById(Integer id) {
        tipoRepository.deleteById(id);
    }

    // Otros métodos según tus necesidades
}
