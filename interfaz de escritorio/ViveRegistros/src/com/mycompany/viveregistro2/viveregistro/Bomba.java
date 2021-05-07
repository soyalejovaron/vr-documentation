
package com.mycompany.viveregistro2.viveregistro;

import java.util.ArrayList;

public class Bomba {
    private String serial;
    private int potencia;
    private int presion;
    private String referencia;
    private int voltaje;
    private boolean bombeando;
    private int tanque;
    private boolean estado;
    private ArrayList<LineaDeRiego> LineaDeRiego;
    
    
    public Bomba(){
        
    }
    
    public Bomba(String serial, int potencia, int presion, String referencia, int voltaje, boolean bombeando, int tanque, boolean estado, ArrayList<LineaDeRiego> LineaDeRiego){
     this.serial = serial;
     this.potencia = potencia;
     this.presion = presion;
     this.referencia = referencia;
     this.voltaje = voltaje;
     this.bombeando = bombeando;
     this.tanque = tanque;
     this.estado = estado;
     this.LineaDeRiego = LineaDeRiego;
    }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public int getPotencia() {
        return potencia;
    }

    public void setPotencia(int potencia) {
        this.potencia = potencia;
    }

    public int getPresion() {
        return presion;
    }

    public void setPresion(int presion) {
        this.presion = presion;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public int getVoltaje() {
        return voltaje;
    }

    public void setVoltaje(int voltaje) {
        this.voltaje = voltaje;
    }

    public boolean isBombeando() {
        return bombeando;
    }

    public void setBombeando(boolean Bombeando) {
        this.bombeando = Bombeando;
    }

    public int getTanque() {
        return tanque;
    }

    public void setTanque(int tanque) {
        this.tanque = tanque;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public ArrayList<LineaDeRiego> getLineaDeRiego() {
        return LineaDeRiego;
    }

    public void setLineaDeRiego(ArrayList<LineaDeRiego> LineaDeRiego) {
        this.LineaDeRiego = LineaDeRiego;
    }

    public String getBombeando() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
