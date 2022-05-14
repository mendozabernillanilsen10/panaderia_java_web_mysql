
package Interfaces;

import Modelos.persona;
import java.util.List;


public interface CRUD_Per {
    public List listar();
    public persona list(int ID_Persona);
    public boolean add(persona per);
    public boolean edit(persona per);
    public boolean eliminar(int ID_Persona);
}
