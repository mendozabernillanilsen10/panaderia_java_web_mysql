
package Modelos;

import Interfaces.CRUD_PROV;
import Modelos.Proveedor;
import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProveedorDAO implements CRUD_PROV{
    //Singleton
    Conexion cn= Conexion.getInstancia();
    
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Proveedor p = new Proveedor();

    @Override
    public List listar() {
        ArrayList<Proveedor>list= new ArrayList<>();
        String sql="select * from proveedor";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Proveedor prov = new Proveedor();
                prov.setIdProveedor(rs.getInt("idProveedor"));
                prov.setNombre(rs.getString("Nombre"));
                prov.setDireccion(rs.getString("Direccion"));
                prov.setTelefono(rs.getString("Telefono"));
                prov.setRUC(rs.getString("RUC"));
                prov.setEmail(rs.getString("Email"));
                list.add(prov);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Proveedor list(int id) {
        String sql="select * from proveedor where idProveedor="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                p.setIdProveedor(rs.getInt("idProveedor"));
                p.setNombre(rs.getString("Nombre"));
                p.setDireccion(rs.getString("Direccion"));
                p.setTelefono(rs.getString("Telefono"));
                p.setRUC(rs.getString("RUC"));
                p.setEmail(rs.getString("Email"));
            }
                
        } catch (Exception e) {
        }
        return  p;
    }

    @Override
    public boolean add(Proveedor prov) {
        String sql="insert into proveedor(idProveedor, Nombre, Direccion, Telefono, RUC, Email)values('"+prov.getIdProveedor()+"','"+prov.getNombre()+"','"+prov.getDireccion()+"','"+prov.getTelefono()+"','"+prov.getRUC()+"','"+prov.getEmail()+"')";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        
        return false;
    }

    @Override
    public boolean editar(Proveedor prov) {
        String sql="update proveedor set idProveedor='"+prov.getIdProveedor()+"',Nombre='"+prov.getNombre()+"',Direccion='"+prov.getDireccion()+"',Telefono='"+prov.getTelefono()+"',RUC='"+prov.getRUC()+"',Email='"+prov.getEmail()+"'where idProveedor="+prov.getIdProveedor();
        try {
            con = cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from proveedor where idProveedor="+id;
        try {
            con= cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
