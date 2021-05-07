/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro.utils;

/**
 *
 * @author alejo
 */
import java.sql.*;

public class Conexion {
    public static Connection conex;
   
    
    public Conexion(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conex = DriverManager.getConnection("jdbc:mysql://localhost:3306/vivemongoregistro","root", "");
            conex.setAutoCommit(true);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Error en conexion a base de datos");
        }
        
    }
    public static void desconectar() {
        try {
            conex.close();
        }
        catch (SQLException ex) {
            System.out.println("No se cerró la conexión");
        }
    }

 

    public PreparedStatement prepareStatement(String sql){
        try {
            return conex.prepareStatement(sql);
        } catch (SQLException ex) {
            return null;
        }
    }
    
    public static Connection getConexion(){
        return conex;
    }
    /* Este metodo sirbe para validar la conexion a la base de datos.
    public static void main(String[] args){
      Conexion con = new Conexion();
    }

 

*/

}
