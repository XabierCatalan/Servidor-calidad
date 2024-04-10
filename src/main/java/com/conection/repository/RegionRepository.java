package com.conection.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.conection.entities.Region;



@Repository
public interface RegionRepository extends CrudRepository<Region, Long>{
    
}