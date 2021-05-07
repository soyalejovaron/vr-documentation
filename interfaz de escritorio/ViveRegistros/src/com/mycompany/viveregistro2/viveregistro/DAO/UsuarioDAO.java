 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro.DAO;

import com.mycompany.viveregistro2.viveregistro.Usuario;
import com.mycompany.viveregistro2.viveregistro.businesslogic.UsuarioBL;
import com.mycompany.viveregistro2.viveregistro.utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author alejo
 */
public class UsuarioDAO{
    public boolean crearUsuario(Usuario ap){
        Conexion con = new Conexion();
        Connection conex =Conexion.getConexion();
        try {
            PreparedStatement ps =
                    conex.prepareStatement("INSERT INTO tbl_lineaderiego SET cc ='"+ap.getCC()+"' "
                            + "nombre = '"+ap.getNombre()+"' "+"apellido = '"+ap.getApellido()+"' "+"correo = '"+ap.getCorreo()+"' "+
                                    "contrasena = '"+ap.getContrasena()+"' "+"funcionamiento = '"+ap.getFuncionamiento()+"'");
            ps.execute();
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        } 
    }
}


