package com.conection.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.conection.repository.PokemonRepository;

@Service
public class PokemonService {
    
    
    
    public ArrayList<String> FindPokemonByTypeAndRegion(int tipo, int region) {
        String sql = "SELECT Nombre FROM Pokemons WHERE (Tipo1 = ? OR Tipo2 = ?) AND Region = ?";
        ArrayList<String> pokemonNames = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection("jdbc:sqlite:pokemonBD.db");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, tipo);
            statement.setInt(2, tipo);
            statement.setInt(3, region);

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                String pokemonName = resultSet.getString("nombre");
                pokemonNames.add(pokemonName);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return pokemonNames;
    }

}