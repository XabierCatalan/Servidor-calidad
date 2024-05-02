package com.conection.entities;

import javax.jdo.annotations.PersistenceCapable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor


@Entity
@Table(name = "Pokemons")
@PersistenceCapable

public class Pokemon {
    @Id
    private int id;

    private String Nombre;
    private int Tipo1;
    private int Tipo2;
    private int Region;

    
}
