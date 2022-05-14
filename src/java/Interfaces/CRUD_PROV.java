/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Interfaces;

import Modelos.Proveedor;
import java.util.List;

public interface CRUD_PROV {
    public List listar();
    public Proveedor list(int id);
    
   public boolean add(Proveedor prov);
   public boolean editar(Proveedor prov);
   public boolean eliminar(int id);
}
