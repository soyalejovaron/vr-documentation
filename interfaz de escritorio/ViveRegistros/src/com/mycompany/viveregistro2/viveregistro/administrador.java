/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro;

import java.util.ArrayList;




public class administrador extends Usuario {
    
    private String CC_a;
    
    public administrador(){
        
    }
    
    public administrador(String CC_a, String CC, String nombre, String apellido, String correo, String contrasena, boolean estado, ArrayList<Funcionamiento> Funcionamiento) {
        super(CC, nombre, apellido, correo, contrasena, estado, Funcionamiento);
        this.CC_a = CC_a;
    }
    
    
    
    
    
}

