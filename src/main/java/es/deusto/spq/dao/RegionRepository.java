package es.deusto.spq.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import es.deusto.spq.model.Region;

@Repository
public interface RegionRepository extends JpaRepository<Region, Integer> {
    // Puedes agregar métodos adicionales según tus necesidades
}
