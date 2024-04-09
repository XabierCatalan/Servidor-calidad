package es.deusto.spq.model;

import javax.persistence.*;

@Entity
@Table(name = "Tipo") // Especifica el nombre de la tabla en la base de datos
public class Tipo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDtipo") // Nombre de la columna que es la clave primaria en la tabla Tipo
    private int id;

    @Column(name = "Tipo") // Nombre de la columna que almacena el tipo de Pokémon
    private String tipo;

    // Constructor, getters y setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    
}


/*public enum Tipo {
    NORMAL,
    FUEGO,
    AGUA,
    PLANTA,
    ELECTRICO,
    HIELO,
    LUCHA,
    VENENO,
    TIERRA,
    VOLADOR,
    PSIQUICO,
    BICHO,
    ROCA,
    FANTASMA,
    DRAGON,
    SINIESTRO,
    ACERO,
    SINGULAR,
    HADA;

   
}*/
