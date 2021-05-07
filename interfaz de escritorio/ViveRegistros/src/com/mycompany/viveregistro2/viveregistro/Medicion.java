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


public class Medicion {
    private String idSensor;
    private int valor;
    private ArrayList<Sensor> sensor;
    
    public Medicion(){
    }
    
    public Medicion(String idSensor, int valor, ArrayList<Sensor> sensor){
        this.idSensor = idSensor;
        this.valor = valor;
        this.sensor = sensor;
    }

    public String getIdSensor() {
        return idSensor;
    }

    public void setIdSensor(String idSensor) {
        this.idSensor = idSensor;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public ArrayList<Sensor> getSensor() {
        return sensor;
    }

    public void setSensor(ArrayList<Sensor> sensor) {
        this.sensor = sensor;
    }

   
    
    
    
}

