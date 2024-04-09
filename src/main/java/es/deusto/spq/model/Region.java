package es.deusto.spq.model;

import javax.persistence.*;

@Entity
@Table(name = "Region") // Especifica el nombre de la tabla en la base de datos
public class Region {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDregion") // Nombre de la columna que es la clave primaria en la tabla Region
    private int id;

    @Column(name = "Nombre") // Nombre de la columna que almacena el nombre de la región
    private String nombre;

    // Constructor, getters y setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

}

/*public enum Region {
    KANTO,
    JOHTO,
    HOENN,
    SINNOH,
    TESELIA,
    KALOS,
    ALOLA,
    GALAR,
    PALDEA;
}*/
