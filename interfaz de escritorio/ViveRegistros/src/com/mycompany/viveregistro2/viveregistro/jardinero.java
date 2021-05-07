/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro;

import java.util.ArrayList;


public class jardinero extends Usuario {
    
    private String CC_j;
    
    public jardinero(){
        
    }
    
    public jardinero(String CC_j, String CC, String nombre, String apellido, String correo, String contrasena, boolean estado, ArrayList<Funcionamiento> Funcionamiento) {
        super(CC, nombre, apellido, correo, contrasena, estado, Funcionamiento);
        this.CC_j = CC_j;
    }
    
    
    
    
    
}
