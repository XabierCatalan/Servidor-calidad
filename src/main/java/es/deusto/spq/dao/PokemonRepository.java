package es.deusto.spq.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import es.deusto.spq.model.Pokemon;

@Repository
public interface PokemonRepository extends JpaRepository<Pokemon, Integer> {
    // Aquí puedes agregar métodos adicionales según tus necesidades
}
