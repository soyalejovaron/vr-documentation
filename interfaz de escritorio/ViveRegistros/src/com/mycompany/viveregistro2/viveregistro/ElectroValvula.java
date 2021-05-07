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


public class ElectroValvula {
    
  private String serial;
  private boolean estado;
  private int voltaje;
  private int diametro;
  private String referencia;
  private ArrayList<LineaDeRiego> LineaDeRiego;
  
  public ElectroValvula(){
  }
  
  public ElectroValvula(String serial, boolean estado, int voltaje, int diametro, String referencia, ArrayList<LineaDeRiego> LineaDeRiego){
      this.serial = serial;
      this.estado = estado;
      this.voltaje = voltaje;
      this.diametro = diametro;
      this.referencia = referencia;
      this.LineaDeRiego = LineaDeRiego;
  }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean Estado) {
        this.estado = Estado;
    }

    public int getVoltaje() {
        return voltaje;
    }

    public void setVoltaje(int voltaje) {
        this.voltaje = voltaje;
    }

    public int getDiametro() {
        return diametro;
    }

    public void setDiametro(int diametro) {
        this.diametro = diametro;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public ArrayList<LineaDeRiego> getLineaDeRiego() {
        return LineaDeRiego;
    }

    public void setLineaDeRiego(ArrayList<LineaDeRiego> LineaDeRiego) {
        this.LineaDeRiego = LineaDeRiego;
    }

    public String getEstado() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
  
  
    
    
}

