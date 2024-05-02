package com.conection.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.conection.entities.Usuario;

@Service
public class RegionService {
    

   
    public boolean insertRegion(String Region) {
        boolean result = false;
        String sql = "INSERT INTO Regiones (Nombre) VALUES (?)";

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pokedokuDB", "spq", "spq");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, Region);
          

            int rowsAffected = statement.executeUpdate();
            if(rowsAffected > 0){
                result = true;
            }
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }

    public int getIDRegionByName(String Region) {
        String sql = "SELECT Id FROM Regiones WHERE Nombre = ?";
        int id = -1;

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pokedokuDB", "spq", "spq");
            PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, Region);
          

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                id = resultSet.getInt("Id");
            }

            return id;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return id;


    }
}
