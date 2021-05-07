/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro.DAO;
import com.mycompany.viveregistro2.viveregistro.ElectroValvula;
import com.mycompany.viveregistro2.viveregistro.utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class ElectroValvulaDAO {
    public boolean ElectroValvula(ElectroValvula ap){
        Conexion con = new Conexion();
        Connection conex =Conexion.getConexion();
        try {
            PreparedStatement ps =
                    conex.prepareStatement("INSERT INTO tbl_bateria SET serial ='"+ap.getSerial()+"' "
                            + "estado = '"+ap.getEstado()+"' "+"voltaje = '"+ap.getVoltaje()+"' "+"diametro = '"+ap.getDiametro()+"' "+
                                    "referencia = '"+ap.getReferencia()+"' "+"LineaDeRiego = '"+ap.getLineaDeRiego()+"' ");
            ps.execute();
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        }
        
    }
    public ElectroValvula consultarCat(int Serial){
        Conexion con = new Conexion();
        Connection conex = Conexion.getConexion();
        try{
            Statement st = conex.createStatement();
            String name = null;
           ResultSet resultado =  st.executeQuery("SELECT * FROM tbl_electrovalcula"
                   + " WHERE serial  = '"+Serial+"'");
           boolean estado = resultado.getBoolean("estado");
           int voltaje = resultado.getInt("voltaje");
           int diametro = resultado.getInt("diametro");
           String referencia = resultado.getString("referencia");
           String LineaDeRiego = resultado.getString("LineaDeRiego");
        }catch(SQLException ex){
           return null;
        }
         return null;
     }
}
