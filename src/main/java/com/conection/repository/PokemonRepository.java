package com.conection.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.conection.entities.Pokemon;





@Repository
public interface PokemonRepository extends CrudRepository<Pokemon, Long>{
    
}