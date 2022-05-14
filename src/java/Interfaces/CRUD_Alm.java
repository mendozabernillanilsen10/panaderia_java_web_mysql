/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelos.Almacen;
import java.util.List;

/**
 *
 * @author omar
 */
public interface CRUD_Alm {
    public List listar();
    public Almacen list(int id);
    public boolean add(Almacen al);
    public boolean edit(Almacen al);
    public boolean eliminar(int id);

    
}
