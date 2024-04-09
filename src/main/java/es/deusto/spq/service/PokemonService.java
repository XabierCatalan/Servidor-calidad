package es.deusto.spq.service;

import org.springframework.stereotype.Service;
import java.util.List;
import es.deusto.spq.dao.PokemonRepository;
import es.deusto.spq.model.Pokemon;

@Service
public class PokemonService {

    private final PokemonRepository pokemonRepository;

    public PokemonService(PokemonRepository pokemonRepository) {
        this.pokemonRepository = pokemonRepository;
    }

    // Método para obtener todos los Pokémon
    public List<Pokemon> getAllPokemon() {
        return pokemonRepository.findAll();
    }

    // Método para guardar un nuevo Pokémon
    public Pokemon savePokemon(Pokemon pokemon) {
        return pokemonRepository.save(pokemon);
    }

    // Método para obtener un Pokémon por su ID
    public Pokemon getPokemonById(Integer id) {
        return pokemonRepository.findById(id).orElse(null);
    }

    // Método para eliminar un Pokémon por su ID
    public void deletePokemonById(Integer id) {
        pokemonRepository.deleteById(id);
    }

    // Otros métodos según tus necesidades
}
