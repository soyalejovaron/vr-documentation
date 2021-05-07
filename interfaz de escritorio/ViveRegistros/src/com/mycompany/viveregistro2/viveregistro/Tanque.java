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


public class Tanque {
  private String serial;
  private int altura;
  private int capacidad;
  private int volumen;
  private String referencia;
  private boolean estado;
  
  public Tanque(){
      
  }
  
  public Tanque(String serial, int altura, int capacidad, int volumen, String referencia, boolean estado){
      this.serial = serial;
      this.altura = altura;
      this.capacidad = capacidad;
      this.volumen = volumen;
      this.referencia = referencia;
      this.estado = estado;
  }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public int getAltura() {
        return altura;
    }

    public void setAltura(int altura) {
        this.altura = altura;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public int getVolumen() {
        return volumen;
    }

    public void setVolumen(int volumen) {
        this.volumen = volumen;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public boolean getEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
  
  
  
  
  
  
}

