/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro.DAO;
import com.mycompany.viveregistro2.viveregistro.Cat;
import com.mycompany.viveregistro2.viveregistro.utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class CatDAO {
    public boolean Cat(Cat ap){
        Conexion con = new Conexion();
        Connection conex =Conexion.getConexion();
        try {
            PreparedStatement ps =
                    conex.prepareStatement("INSERT INTO tbl_bateria SET name ='"+ap.getName()+"' "
                            + "age = '"+ap.getAge()+"' "+"breed = '"+ap.getBreed()+"' ");
            ps.execute();
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        }
        
    }
    public Cat consultarCat(int Serial){
        Conexion con = new Conexion();
        Connection conex = Conexion.getConexion();
        try{
            Statement st = conex.createStatement();
            String name = null;
           ResultSet resultado =  st.executeQuery("SELECT * FROM tbl_cat"
                   + " WHERE name  = '"+name+"'");
           int age = resultado.getInt("age");
           String breed = resultado.getString("breed");
        }catch(SQLException ex){
           return null;
        }
         return null;
     }
}
