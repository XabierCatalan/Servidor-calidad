package com.conection.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.conection.entities.Tipo;

@Repository
public interface TipoRepository extends CrudRepository<Tipo, Long>{
    
}
