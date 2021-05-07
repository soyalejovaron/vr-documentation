/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro;

public class sensorTemperatura extends Sensor {
    
    int idTemperatura;

    public sensorTemperatura() {
        
    }

    public sensorTemperatura(int idTemperatura, String serial, String planta, int humedad, boolean estado) {
        super(serial, planta, humedad, estado);
        this.idTemperatura = idTemperatura;
    }
    
    
   
}
