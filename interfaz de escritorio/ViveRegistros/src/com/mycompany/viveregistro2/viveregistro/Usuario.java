/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro;

/**
 *
 * @author alejo
 */



import java.util.ArrayList;


public class Usuario {
  private String CC;
  private String nombre;
  private String apellido;
  private String correo;
  private String contrasena;
  private boolean estado;
  private ArrayList<Funcionamiento> funcionamiento;
  
  public Usuario(){
      
  }
  
  public Usuario(String CC, String nombre, String apellido, String correo, String contrasena, boolean estado, ArrayList<Funcionamiento> Funcionamiento){
      this.CC = CC;
      this.nombre = nombre;
      this.apellido = apellido;
      this.correo = correo;
      this.contrasena = contrasena;
      this.estado = estado;
      this.funcionamiento = Funcionamiento;
  }

    public String getCC() {
        return CC;
    }

    public void setCC(String CC) {
        this.CC = CC;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public ArrayList<Funcionamiento> getFuncionamiento() {
        return funcionamiento;
    }

    public void setFuncionamiento(ArrayList<Funcionamiento> Funcionamiento) {
        this.funcionamiento = Funcionamiento;
    }

    
  
  
  
  
  
}

