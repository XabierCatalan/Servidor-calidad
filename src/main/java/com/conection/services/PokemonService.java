package com.conection.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import org.springframework.stereotype.Service;

@Service
public class PokemonService {
    
    
    
    public ArrayList<String> FindPokemonByTypeAndRegion(int tipo, int region) {
        String sql = "SELECT Nombre FROM Pokemons WHERE (Tipo1 = ? OR Tipo2 = ?) AND Region = ?";
        ArrayList<String> pokemonNames = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pokedokuDB", "spq", "spq");
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

    public boolean insertPokemon(String nombre, int tipo1, int tipo2, int region) {
        String sql = "INSERT INTO Pokemons (Nombre, Tipo1, Tipo2, Region) VALUES (?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pokedokuDB", "spq", "spq");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, nombre);
            statement.setInt(2, tipo1);
            statement.setInt(3, tipo2);
            statement.setInt(4, region);

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }



}
