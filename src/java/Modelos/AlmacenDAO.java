/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;
import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Interfaces.CRUD_Alm;
import java.sql.SQLException;


/**
 *
 * @author omar
 */
public class AlmacenDAO implements CRUD_Alm{
    //Singleton
    Conexion cn= Conexion.getInstancia();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Almacen a=new Almacen();


    @Override
    public List listar() {
        ArrayList<Almacen>list=new ArrayList<>();
        String sql="select * from almacen";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Almacen al=new Almacen();
                
                al.setIdAlmacen(rs.getInt("idAlmacen"));
               
                al.setNombre(rs.getString("Nombre"));
                al.setEstado(rs.getString("Estado"));
                al.setDescripcion(rs.getString("Descripcion"));
                list.add(al);  
             }
            
            } catch (SQLException e) {
        }    
        return list;
    }
    

    @Override
    public Almacen list(int id) {
        String sql="select * from almacen where idAlmacen="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
               
                
                a.setIdAlmacen(rs.getInt("idAlmacen"));
                a.setNombre(rs.getString("Nombre"));
                a.setEstado(rs.getString("Estado"));
                a.setDescripcion(rs.getString("Descripcion"));
               
             }
            
            } catch (SQLException e) {
        }    
        return a;
    }

    @Override
    public boolean add(Almacen al) {
        String sql="insert into almacen(idAlmacen, Nombre, Estado, Descripcion)values('"+al.getIdAlmacen()+"','"+al.getNombre()+"','"+al.getEstado()+"','"+al.getDescripcion()+"')";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
        return false; 

    }

    @Override
    public boolean edit(Almacen al) {
                String sql="update almacen set idAlmacen='"+al.getIdAlmacen()+"',Nombre='"+al.getNombre()+"',Estado='"+al.getEstado()+"',Descripcion='"+al.getDescripcion()+"'where idAlmacen="+al.getIdAlmacen();
                try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
                return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from almacen where idAlmacen="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (SQLException e) {
        }
        return false; 
    }
    
}
