package es.deusto.spq.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import es.deusto.spq.dao.RegionRepository;
import es.deusto.spq.model.Region;

@Service
public class RegionService {

    private final RegionRepository regionRepository;

    @Autowired
    public RegionService(RegionRepository regionRepository) {
        this.regionRepository = regionRepository;
    }

    // Métodos de servicio para operaciones relacionadas con la entidad Region
    public List<Region> getAllRegions() {
        return regionRepository.findAll();
    }

    public Region saveRegion(Region region) {
        return regionRepository.save(region);
    }

    public Region getRegionById(Integer id) {
        return regionRepository.findById(id).orElse(null);
    }

    public void deleteRegionById(Integer id) {
        regionRepository.deleteById(id);
    }

    // Otros métodos según tus necesidades
}
