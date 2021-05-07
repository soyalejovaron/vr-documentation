/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro.DAO;

import com.mycompany.viveregistro2.viveregistro.LineaDeRiego;
import com.mycompany.viveregistro2.viveregistro.utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author alejo
 */
public class LineaDeRiegoDAO {
    public boolean LineaDeRiego(LineaDeRiego ap){
        Conexion con = new Conexion();
        Connection conex =Conexion.getConexion();
        try {
            PreparedStatement ps =
                    conex.prepareStatement("INSERT INTO tbl_lineaderiego SET id ='"+ap.getId()+"' "
                            + "bomba = '"+ap.getBomba()+"' "+"bateria = '"+ap.getBateria()+"' "+"sensores = '"+ap.getSensores()+"' "+
                                    "electrovalvula = '"+ap.getElectrovalvula()+"' "+"humedadrango = '"+ap.getHumedadRango()+"' "+"humedad = '"+ap.getHumedad()+"'"
                                            + ""+"interval = '"+ap.getInterval()+"'"+"medicion = '"+ap.getMedicion()+"'");
            ps.execute();
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        } 
    }
}
