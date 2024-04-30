package com.conection.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import org.springframework.stereotype.Service;


@Service
public class TipoService {
    

        public boolean InsertTipo(String tipo) {
        String sql = "INSERT INTO Tipos (Nombre) VALUES (?)";

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pokedokuDB", "spq", "spq");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, tipo);
          

            int rowsAffected = statement.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

}
