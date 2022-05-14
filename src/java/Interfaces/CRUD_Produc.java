
package Interfaces;

import Modelos.Producto;
import java.util.List;


public interface CRUD_Produc {
    public List listar();
    public Producto list(int idProducto);
    public boolean add(Producto per);
    public boolean edit(Producto per);
    public boolean eliminar(int idProducto);
}
