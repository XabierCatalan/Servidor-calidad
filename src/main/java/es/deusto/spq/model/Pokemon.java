package es.deusto.spq.model;
import javax.persistence.*;


@Entity
public class Pokemon {
    @Id
    private int pokedexNumber;
    private String name;
    @ManyToOne
    @JoinColumn(name = "Tipo1")
    private Tipo type1;
    @ManyToOne
    @JoinColumn(name = "Tipo2")
    private Tipo type2;
    @ManyToOne
    @JoinColumn(name = "Region")
    private Region region;

    public Pokemon() {
        // Default constructor
    }

    public Pokemon(int pokedexNumber, String name, Tipo type1, Tipo type2, Region region) {
        this.pokedexNumber = pokedexNumber;
        this.name = name;
        this.type1 = type1;
        this.type2 = type2;
        this.region = region;
    }

    public int getPokedexNumber() {
        return pokedexNumber;
    }

    public void setPokedexNumber(int pokedexNumber) {
        this.pokedexNumber = pokedexNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Tipo getType1() {
        return type1;
    }

    public void setType1(Tipo type1) {
        this.type1 = type1;
    }

    public Tipo getType2() {
        return type2;
    }

    public void setType2(Tipo type2) {
        this.type2 = type2;
    }

    public Region getRegion() {
        return region;
    }

    public void setRegion(Region region) {
        this.region = region;
    }
}
