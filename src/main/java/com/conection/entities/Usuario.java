package com.conection.entities;


import javax.jdo.annotations.PersistenceCapable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "Tipos")
@PersistenceCapable
public class Usuario {

    @Id
    private int id;

    private String Correo;
    private String Contra;
    private int Nivel;

    
}
