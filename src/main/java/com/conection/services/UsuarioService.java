package com.conection.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.datanucleus.store.types.wrappers.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.conection.entities.Usuario;
import com.conection.repository.UsuarioRepository;
import com.google.common.base.Strings;

@Service
public class UsuarioService {

    private UsuarioRepository usuarioRepository;

    @Autowired // Anotación para inyección de dependencias por método
    public void setUsuarioRepository(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }
    
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

    public boolean insertUsuario(String correo, String contra, Integer nivel) {
        String sql = "INSERT INTO Usuarios (Correo, Contra, Nivel) VALUES (?, ?, ?)";

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pokedokuDB", "spq", "spq");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, correo);
            statement.setString(2, contra);
            statement.setInt(3, nivel);

            int rowsAffected = statement.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }


    public Usuario getUsuarioByCorreoContra(String correo, String contra) {
        String sql = "SELECT * FROM Usuarios WHERE Correo = ? AND Contra = ?";
        Usuario usuario = null;

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pokedokuDB", "spq", "spq");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, correo);
            statement.setString(2, contra);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                usuario = new Usuario();
                usuario.setId(resultSet.getInt("Id"));
                usuario.setCorreo(resultSet.getString("Correo"));
                usuario.setContra(resultSet.getString("Contra"));
                usuario.setNivel(resultSet.getInt("Nivel"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuario;
    }

    public ArrayList<String> getUsuarios() {
        String sql = "SELECT * FROM Usuarios";
        ArrayList<String> usuarios = new ArrayList<>();

        Usuario usuario;

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pokedokuDB", "spq", "spq");
             PreparedStatement statement = connection.prepareStatement(sql)) {

            ResultSet resultSet=  statement.executeQuery();

            while (resultSet.next()) {
                usuario = new Usuario();
                usuario.setId(resultSet.getInt("Id"));
                usuario.setCorreo(resultSet.getString("Correo"));
                usuario.setContra(resultSet.getString("Contra"));
                usuario.setNivel(resultSet.getInt("Nivel"));
                usuarios.add(usuario.toString());
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return usuarios;
    }


}
