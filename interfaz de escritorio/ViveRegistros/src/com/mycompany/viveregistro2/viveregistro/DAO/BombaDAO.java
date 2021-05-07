/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro.DAO;
import com.mycompany.viveregistro2.viveregistro.Bomba;
import com.mycompany.viveregistro2.viveregistro.utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class BombaDAO {
    public boolean Bomba(Bomba ap){
        Conexion con = new Conexion();
        Connection conex =Conexion.getConexion();
        try {
            PreparedStatement ps =
                    conex.prepareStatement("INSERT INTO tbl_bomba SET serial ='"+ap.getSerial()+"' "
                            + "potencia = '"+ap.getPotencia()+"' "+"presion = '"+ap.getPresion()+"' "+
                    "referencia = '"+ap.getReferencia()+"' "+"voltaje = '"+ap.getVoltaje()+"' "+"bombeando= '"+ap.getBombeando()+"' "
                    +"tanque = '"+ap.getTanque()+"' "+"estado = '"+ap.isEstado()+"' "+"LineaDeRiego = '"+ap.getLineaDeRiego()+"' ");
            ps.execute();
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        }
        
    }
    public Bomba consultarBomba(int Serial){
        Conexion con = new Conexion();
        Connection conex = Conexion.getConexion();
        try{
            Statement st = conex.createStatement();
           ResultSet resultado =  st.executeQuery("SELECT * FROM tbl_bomba"
                   + " WHERE serial  = '"+Serial+"'");
           int potencia = resultado.getInt("potencia");
           int presion = resultado.getInt("presion");
           String referencia = resultado.getString("referencia");
           int voltaje = resultado.getInt("voltaje");
           boolean bombeando = resultado.getBoolean("bombeando");
           int tanque = resultado.getInt("tanque");
           boolean estado = resultado.getBoolean("estado");
           String LineaDeRiego = resultado.getString("LineaDeRiego");
        }catch(SQLException ex){
           return null;
        }
         return null;
     }
}