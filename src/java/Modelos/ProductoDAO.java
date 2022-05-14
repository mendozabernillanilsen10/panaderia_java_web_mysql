
package Modelos;

import Modelos.Producto;
import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Interfaces.CRUD_Produc;


public class ProductoDAO implements CRUD_Produc{
    //Singleton
    Conexion cn= Conexion.getInstancia();
    
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Producto p=new Producto();
    
    @Override
    public List listar() {
       ArrayList<Producto>list=new ArrayList<>();
       String sql="select *from producto";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Producto per=new Producto();
                per.setIdProducto(rs.getInt("idProducto"));
                per.setIdTipoProducto(rs.getInt("idTipoProducto"));
                per.setIdProduccion(rs.getInt("idProduccion"));
                per.setNombre(rs.getString("Nombre"));
                per.setCantidad(rs.getInt("Cantidad"));
                per.setPrecio(rs.getDouble("Precio"));
                list.add(per);
            }
        } catch (Exception e) {
        }
       return list;
    }

    @Override
    public Producto list(int idProducto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Producto per) {
        String sql="insert into producto(idTipoProducto,idProduccion,Nombre,Cantidad,Precio) values('"+per.getIdTipoProducto()+"','"+per.getIdProduccion()+"','"+per.getNombre()+"','"+per.getCantidad()+"', '"+per.getPrecio()+"')";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Producto per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int idProducto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
