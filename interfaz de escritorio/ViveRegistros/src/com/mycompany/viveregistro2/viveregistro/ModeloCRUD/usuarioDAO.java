
package com.mycompany.viveregistro2.viveregistro.ModeloCRUD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;


public class usuarioDAO implements usuarioBL {
    Database db = new Database();
    Usuario us = new Usuario();
    @Override
    public boolean agregar(Object obj) {
        us = (Usuario) obj;
        String sql = "INSERT INTO usuario (nombre,apellidos,correo,contraseña,rol) VALUES(?,?,?,?,?)";
        Connection con;
        PreparedStatement pst;
        try{
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            pst = con.prepareStatement(sql);
            pst.setString(1, us.getNombres());
            pst.setString(2, us.getApellidos());
            pst.setString(3, us.getCorreo());
            pst.setString(4, us.getContraseña());
            pst.setString(5, us.getRol());
            int filas = pst.executeUpdate();
            if(filas > 0){
                con.close();
                return true;
            }else{
                con.close();
                return false;
            }
            
        }catch(SQLException | ClassNotFoundException e){
            JOptionPane.showMessageDialog(null, "Ocurrió un error: " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean modificar(Object obj) {
        us = (Usuario) obj;
        String sql = "UPDATE usuario SET nombre = ?,apellidos = ?,correo = ?,contraseña = ?,rol = ? WHERE id = ?";
        Connection con;
        PreparedStatement pst;
        try{
            
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            pst = con.prepareStatement(sql);
            pst.setString(1, us.getNombres());
            pst.setString(2, us.getApellidos());
            pst.setString(3, us.getCorreo());
            pst.setString(4, us.getContraseña());
            pst.setString(5, us.getRol());
            pst.setInt(6, us.getId());
            int filas = pst.executeUpdate();
            if(filas > 0){
                con.close();
                return true;
            }else{
                con.close();
                return false;
            }
            
        }catch(SQLException | ClassNotFoundException e){
            JOptionPane.showMessageDialog(null, "Ocurrió un error: " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean eliminar(Object obj) {
        us = (Usuario) obj;
        String sql = "DELETE FROM usuario WHERE id = ?";
        Connection con;
        PreparedStatement pst;
        try{
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            pst = con.prepareStatement(sql);
            pst.setInt(1, us.getId());
            int filas = pst.executeUpdate();
            if(filas > 0){
                con.close();
                return true;
            }else{
                con.close();
                return false;
            }
            
        }catch(SQLException | ClassNotFoundException e){
            JOptionPane.showMessageDialog(null, "Ocurrió un error: " + e.getMessage());
            return false;
        }
    }

    @Override
    public ArrayList<Object[]> consultar() {
        String sql = "SELECT * FROM usuario";
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        ResultSetMetaData meta;
        ArrayList<Object[]> datos = new ArrayList<>();
        try{
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(),db.getUser(),db.getPass());
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            meta = rs.getMetaData();
            while (rs.next()){
                Object [] fila = new Object[meta.getColumnCount()];
                for(int i = 0;i < fila.length; i++){
                    fila[i] = rs.getObject(i + 1);
                }
                datos.add(fila);
            }
        }catch(SQLException | ClassNotFoundException e){
            JOptionPane.showMessageDialog(null, "Ocurrió un error: " + e.getMessage());
        }
        return datos;
    }
    
}
