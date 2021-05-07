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
import java.util.Date;

public class Funcionamiento {
    
    private String IdFunc;
    private String MensajeFunc;
    private Date InicioFunc;
    private Date FinFunc;
    private String IdJardinero;
    private String IdAdministrador;
    private ArrayList<LineaDeRiego> LineaDeRiego;

    public Funcionamiento(String IdFunc, String MensajeFunc, Date InicioFunc, Date FinFunc, String IdJardinero, String IdAdministrador, ArrayList<LineaDeRiego> LineaDeRiego) {
        this.IdFunc = IdFunc;
        this.MensajeFunc = MensajeFunc;
        this.InicioFunc = InicioFunc;
        this.FinFunc = FinFunc;
        this.IdJardinero = IdJardinero;
        this.IdAdministrador = IdAdministrador;
        this.LineaDeRiego = LineaDeRiego;
    }

    public String getIdFunc() {
        return IdFunc;
    }

    public void setIdFunc(String IdFunc) {
        this.IdFunc = IdFunc;
    }

    public String getMensajeFunc() {
        return MensajeFunc;
    }

    public void setMensajeFunc(String MensajeFunc) {
        this.MensajeFunc = MensajeFunc;
    }

    public Date getInicioFunc() {
        return InicioFunc;
    }

    public void setInicioFunc(Date InicioFunc) {
        this.InicioFunc = InicioFunc;
    }

    public Date getFinFunc() {
        return FinFunc;
    }

    public void setFinFunc(Date FinFunc) {
        this.FinFunc = FinFunc;
    }

    public String getIdJardinero() {
        return IdJardinero;
    }

    public void setIdJardinero(String IdJardinero) {
        this.IdJardinero = IdJardinero;
    }

    public String getIdAdministrador() {
        return IdAdministrador;
    }

    public void setIdAdministrador(String IdAdministrador) {
        this.IdAdministrador = IdAdministrador;
    }

    public ArrayList<LineaDeRiego> getLineaDeRiego() {
        return LineaDeRiego;
    }

    public void setLineaDeRiego(ArrayList<LineaDeRiego> LineaDeRiego) {
        this.LineaDeRiego = LineaDeRiego;
    }

   
    
    

    
    
    
}

