
package Modelos;

import Config.Conexion;
import Interfaces.CRUD_Per;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class personaDAO implements CRUD_Per{
    //Singleton
    Conexion cn= Conexion.getInstancia();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    persona p=new persona();
    
    @Override
    public List listar() {
        ArrayList<persona>list=new ArrayList<>();
        String sql="select * from persona";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                persona per=new persona();
                per.setID_Persona(rs.getInt("ID_Persona"));
                per.setNombre(rs.getString("Nombre"));
                per.setApellido_PA(rs.getString("Apellido_PA"));
                per.setApellido_MA(rs.getString("Apellido_MA"));
                per.setSexo(rs.getString("Sexo"));
                per.setDNI(rs.getString("DNI"));
                per.setFechaNacimiento(rs.getString("FechaNacimiento"));
                list.add(per);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public persona list(int id) {
        String sql="select * from persona where ID_Persona="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){        
                p.setID_Persona(rs.getInt("ID_Persona"));
                p.setNombre(rs.getString("Nombre"));
                p.setApellido_PA(rs.getString("Apellido_PA"));
                p.setApellido_MA(rs.getString("Apellido_MA"));
                p.setSexo(rs.getString("Sexo"));
                p.setDNI(rs.getString("DNI"));
                p.setFechaNacimiento(rs.getString("FechaNacimiento"));              
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(persona per) {
       String sql="insert into persona(ID_Persona, Nombre, Apellido_PA, Apellido_MA, Sexo, DNI, "
               + "FechaNacimiento)values('"+per.getID_Persona()+"', '"+per.getNombre()+"','"+per.getApellido_PA()+"',"
               + "'"+per.getApellido_MA()+"', '"+per.getSexo()+"', '"+per.getDNI()+"', '"+per.getFechaNacimiento()+"' )";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            
        }
       return false;
    }

    @Override
    public boolean edit(persona per) {
        String sql="update persona set ID_Persona='"+per.getID_Persona()+"',Nombre='"+per.getNombre()+"',Apellido_PA='"+per.getApellido_PA()+"',Apellido_MA='"+per.getApellido_MA()+"',Sexo='"+per.getSexo()+"',DNI='"+per.getDNI()+"', FechaNacimiento='"+per.getFechaNacimiento()+ "'where ID_Persona="+per.getID_Persona();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from persona where ID_Persona="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }    
}

