package com.conection.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public class UsuarioService {
    
    public boolean checkUsuarioByCorreoContra(String Correo, String contra) {
        String sql = "SELECT * FROM Usuarios WHERE Correo = ? AND Contra = ?";

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pokedokuDB", "spq", "spq");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, Correo);
            statement.setString(2, contra);

            

            ResultSet resultSet = statement.executeQuery();

           return resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}
