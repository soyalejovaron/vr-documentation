
package com.mycompany.viveregistro2.viveregistro.ModeloCRUD;

import java.util.ArrayList;


public interface usuarioBL {
    public boolean agregar(Object obj);
    public boolean modificar(Object obj);
    public boolean eliminar(Object obj);
    public ArrayList<Object[]> consultar();
}
