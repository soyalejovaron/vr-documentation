/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.viveregistro2.viveregistro.businesslogic;

import com.mycompany.viveregistro2.viveregistro.DAO.UsuarioDAO;
import com.mycompany.viveregistro2.viveregistro.Usuario;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JOptionPane;

/**
 *
 * @author alejo
 */
public class UsuarioBL extends UsuarioDAO {

    public boolean cambiarDatosPersonales(Usuario ap) {
        if (validarNombre(ap.getNombre())) {
            boolean respuesta = super.crearUsuario(ap);
            return respuesta;
        }
        return false;
    }

    public boolean validarNombre(String nombre) {
        if (nombre != null) {
            if (nombre.length() > 2 && nombre.length() < 150) {
                return true;
            }
        }
        return false;
    }

    public static boolean ValidarMail(String email) {
        // Patron para validar el email
        Pattern pattern = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
        Matcher mather = pattern.matcher(email);
        return mather.find();
    }

    private void validarContraseña() {

        String pas1 = "", pas2 = "";
        /*
        pas1 = password_1.getText().trim();
        pas2 = password_2.getText();
        */
        if (pas1.matches("[A-Za-z][0-9]{10}")) {
            char clave;
            byte contLetra = 0, conNumero = 0;
            for (byte i = 0; i <= pas1.length(); i++) {
                clave = pas1.charAt(i);
                pas2 = String.valueOf(clave);
                if (pas2.matches("[a-zA-Z]")) {
                    contLetra++;
                    System.out.println(contLetra);
                } else if (pas2.matches("[0-9]")) {
                    conNumero++;
                    System.out.println(conNumero);
                }
            }
            if (contLetra == conNumero) {
                JOptionPane.showMessageDialog(null, "Tu contraseña tiene un nivel alto de complejidiad");
            } else if (conNumero == 0) {
                JOptionPane.showConfirmDialog(null, "Para tener una contraseña mas confiable por favor introduce un numero como mínimo.");
            } else if (conNumero == 2 && contLetra <= 3) {
                JOptionPane.showMessageDialog(null, "la contraseña necesita mas de 7 digitos entre numeros y letras");
            }
        } else {
            JOptionPane.showMessageDialog(null, "La contraseña no puede tener caracteres especiales como %-&-$.");
        }
    }
}
