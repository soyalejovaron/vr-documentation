/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro.DAO;

import com.mycompany.viveregistro2.viveregistro.Tanque;
import com.mycompany.viveregistro2.viveregistro.utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author alejo
 */
public class TanqueDAO {
    public boolean Tanque(Tanque ap){
        Conexion con = new Conexion();
        Connection conex =Conexion.getConexion();
        try {
            PreparedStatement ps =
                    conex.prepareStatement("INSERT INTO tbl_tanque SET serial ='"+ap.getSerial()+"' "
                            + "altura = '"+ap.getAltura()+"' "+"capacidad = '"+ap.getCapacidad()+"' "+"volumen = '"+ap.getVolumen()+"' "+
                                    "referencia = '"+ap.getReferencia()+"' "+"estado = '"+ap.getEstado()+"'");
            ps.execute();
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        } 
    }
}
