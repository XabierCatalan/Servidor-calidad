package es.deusto.spq.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import es.deusto.spq.model.Tipo;

@Repository
public interface TipoRepository extends JpaRepository<Tipo, Integer> {
    // Puedes agregar métodos adicionales según tus necesidades
}
