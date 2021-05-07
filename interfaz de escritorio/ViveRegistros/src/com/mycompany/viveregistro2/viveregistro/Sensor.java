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


public class Sensor {
  private String serial;
  private String planta;
  private int humedad;
  private boolean estado;
  
  
  public Sensor(){
      
  }
  
  public Sensor(String serial, String planta, int humedad, boolean estado){
      this.serial = serial;
      this.planta = planta;
      this.humedad = humedad;
      this.estado = estado;
      
  }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public String getPlanta() {
        return planta;
    }

    public void setPlanta(String planta) {
        this.planta = planta;
    }

    public int getHumedad() {
        return humedad;
    }

    public void setHumedad(int humedad) {
        this.humedad = humedad;
    }

    public boolean getEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    

    

    
    
    
  
 
          
}

