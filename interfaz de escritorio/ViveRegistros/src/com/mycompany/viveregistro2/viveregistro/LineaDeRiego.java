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


public class LineaDeRiego {

  private int id;
  private int bomba;
  private int bateria;
  private int sensores;
  private int electrovalvula;
  private int humedadRango;
  private int humedad;
  private boolean estado;
  private boolean onOff;
  private boolean locked;
  private String interval;
  private ArrayList<Medicion> medicion;
  
  
  public LineaDeRiego(){
  }
  
  public LineaDeRiego(int id, int bomba, int bateria, int sensores, int electrovalvula, int humedadRango, int humedad, boolean estado, boolean onOff, boolean locked, String interval, ArrayList<Medicion> medicion){
      this.id = id;
      this.bomba = bomba;
      this.bateria = bateria;
      this.sensores = sensores;
      this.electrovalvula = electrovalvula;
      this.humedadRango = humedadRango;
      this.humedad = humedad;
      this.estado = estado;
      this.onOff = onOff;
      this.locked = locked;
      this.interval = interval;
      this.medicion = medicion;
      
  }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBomba() {
        return bomba;
    }

    public void setBomba(int bomba) {
        this.bomba = bomba;
    }

    public int getBateria() {
        return bateria;
    }

    public void setBateria(int bateria) {
        this.bateria = bateria;
    }

    public int getSensores() {
        return sensores;
    }

    public void setSensores(int sensores) {
        this.sensores = sensores;
    }

    public int getElectrovalvula() {
        return electrovalvula;
    }

    public void setElectrovalvula(int electrovalvula) {
        this.electrovalvula = electrovalvula;
    }

    public int getHumedadRango() {
        return humedadRango;
    }

    public void setHumedadRango(int humedadRango) {
        this.humedadRango = humedadRango;
    }

    public int getHumedad() {
        return humedad;
    }

    public void setHumedad(int humedad) {
        this.humedad = humedad;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public boolean isOnOff() {
        return onOff;
    }

    public void setOnOff(boolean onOff) {
        this.onOff = onOff;
    }

    public boolean isLocked() {
        return locked;
    }

    public void setLocked(boolean locked) {
        this.locked = locked;
    }

    public String getInterval() {
        return interval;
    }

    public void setInterval(String interval) {
        this.interval = interval;
    }

    public ArrayList<Medicion> getMedicion() {
        return medicion;
    }

    public void setMedicion(ArrayList<Medicion> medicion) {
        this.medicion = medicion;
    }

 
  
  
  
}
