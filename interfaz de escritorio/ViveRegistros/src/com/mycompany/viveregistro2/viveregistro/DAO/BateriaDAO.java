/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro.DAO;

import com.mycompany.viveregistro2.viveregistro.Bateria;
import com.mycompany.viveregistro2.viveregistro.utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BateriaDAO {
     public boolean Bateria(Bateria ap){
        Conexion con = new Conexion();
        Connection conex =Conexion.getConexion();
        try {
            PreparedStatement ps =
                    conex.prepareStatement("INSERT INTO tbl_bateria SET serial ='"+ap.getSerial()+"' "
                            + "voltajeSalida = '"+ap.getVoltajeSalida()+"' "+"voltajeEntrada = '"+ap.getVoltajeEntrada()+"' "+
                    "potenciaCarga = '"+ap.getPotenciaCarga()+"' "+"potenciaSalida = '"+ap.getPotenciaSalida()+"' "+"referencia = '"+ap.getReferencia()+"' "
                    +"nivel = '"+ap.getNivel()+"' "+"capacidad = '"+ap.getCapacidad()+"' "+"estado = '"+ap.getEstado()+"' "+"lineaderiego = '"+ap.getLineaDeRiego()+"' ");
            ps.execute();
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        }
        
    }
     public Bateria consultarBateria(int Serial){
        Conexion con = new Conexion();
        Connection conex = Conexion.getConexion();
        try{
            Statement st = conex.createStatement();
           ResultSet resultado =  st.executeQuery("SELECT * FROM tbl_bateria"
                   + " WHERE serial  = '"+Serial+"'");
           int voltajeSalida = resultado.getInt("voltajeSalida");
           int voltajeEntrada = resultado.getInt("voltajeEntrada");
           int potenciaCarga = resultado.getInt("potenciaCarga");
           int potenciaSalida = resultado.getInt("potenciaSalida");
           String referencia = resultado.getString("referencia");
           int nivel = resultado.getInt("nivel");
           int capacidad = resultado.getInt("capacidad");
           boolean estado = resultado.getBoolean("estado");
           String LineaDeRiego = resultado.getString("LineaDeRiego");
        }catch(SQLException ex){
           return null;
        }
         return null;
     }

}
