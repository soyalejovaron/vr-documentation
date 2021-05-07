
package com.mycompany.viveregistro2.viveregistro;

import java.util.ArrayList;


public class Bateria {
        private String serial;
        private int voltajeSalida;
        private int voltajeEntrada;
        private int potenciaCarga;
        private int potenciaSalida;
        private String referencia;
        public int nivel;
        private int capacidad;
        private boolean estado;
        private ArrayList<LineaDeRiego> LineaDeRiego;

        public Bateria(){

        }

        public Bateria(String serial, int voltajeS, int voltajeE, int potenciaC, int potenciaS, String referencia, int nivel, int capacidad, boolean estado, ArrayList<LineaDeRiego> LineaDeRiego){
         this.serial = serial;
         this.voltajeSalida = voltajeS;
         this.voltajeEntrada = voltajeE;
         this.potenciaCarga = potenciaC;
         this.potenciaSalida = potenciaS;
         this.referencia = referencia;
         this.nivel = nivel;
         this.capacidad = capacidad;
         this.estado = estado;
         this.LineaDeRiego = LineaDeRiego;
        }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public int getVoltajeSalida() {
        return voltajeSalida;
    }

    public void setVoltajeSalida(int voltajeSalida) {
        this.voltajeSalida = voltajeSalida;
    }

    public int getVoltajeEntrada() {
        return voltajeEntrada;
    }

    public void setVoltajeEntrada(int voltajeEntrada) {
        this.voltajeEntrada = voltajeEntrada;
    }

    public int getPotenciaCarga() {
        return potenciaCarga;
    }

    public void setPotenciaCarga(int potenciaCarga) {
        this.potenciaCarga = potenciaCarga;
    }

    public int getPotenciaSalida() {
        return potenciaSalida;
    }

    public void setPotenciaSalida(int potenciaSalida) {
        this.potenciaSalida = potenciaSalida;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public boolean getEstado() {
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
        
    
        
    

        
}

