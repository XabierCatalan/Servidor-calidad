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
    
    private final Connection connection;

    public PokemonService(Connection connection) {
        this.connection = connection;
    }
    
    public ArrayList<String> FindPokemonByTypeAndRegion(int tipo, int region) {
        String sql = "SELECT Nombre FROM Pokemons WHERE (Tipo1 = ? OR Tipo2 = ?) AND Region = ?";
        ArrayList<String> pokemonNames = new ArrayList<>();
    
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, tipo);
            statement.setInt(2, tipo);
            statement.setInt(3, region);
    
            ResultSet resultSet = statement.executeQuery();
    
            while (resultSet.next()) {
                String pokemonName = resultSet.getString("Nombre");
                pokemonNames.add(pokemonName);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    
        return pokemonNames;
    }
}
