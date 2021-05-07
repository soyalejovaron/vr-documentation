/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro.DAO;
import com.mycompany.viveregistro2.viveregistro.Funcionamiento;
import com.mycompany.viveregistro2.viveregistro.utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class FuncionamientoDAO {
    public boolean Funcionamiento(Funcionamiento ap){
        Conexion con = new Conexion();
        Connection conex =Conexion.getConexion();
        try {
            PreparedStatement ps =
                    conex.prepareStatement("INSERT INTO tbl_bateria SET IdFunc ='"+ap.getIdFunc()+"' "
                            + "MensajeFunc = '"+ap.getMensajeFunc()+"' "+"InicioFunc = '"+ap.getInicioFunc()+"' "+"FinFunc = '"+ap.getFinFunc()+"' "+
                                    "IdJardinero = '"+ap.getIdJardinero()+"' "+"IdAdministrador = '"+ap.getIdAdministrador()+"' "+"LineaDeRiego = '"+ap.getLineaDeRiego()+"' ");
            ps.execute();
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        }
        
    }
}
