/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro.DAO;

import com.mycompany.viveregistro2.viveregistro.Sensor;
import com.mycompany.viveregistro2.viveregistro.utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author alejo
 */
public class SensorDAO {
    public boolean Sensor(Sensor ap){
        Conexion con = new Conexion();
        Connection conex =Conexion.getConexion();
        try {
            PreparedStatement ps =
                    conex.prepareStatement("INSERT INTO tbl_sensor SET serial ='"+ap.getSerial()+"' "
                            + "planta = '"+ap.getPlanta()+"' "+"humedad = '"+ap.getHumedad()+"' "+"estado = '"+ap.getEstado()+"'");
            ps.execute();
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        } 
    }
}
