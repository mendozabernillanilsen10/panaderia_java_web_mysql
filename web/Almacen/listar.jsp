<%-- 
    Document   : listar
    Created on : 25/10/2021, 12:20:09 AM
    Author     : omar
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelos.Almacen"%>
<%@page import="Modelos.AlmacenDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
               rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <br>
            <br>
            <a href="ControladorAlm?accion=add"><button type="button" class="btn btn-warning">AGREGAR</button></a> 
            <br>
            <br>
           <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">ID</th>
                            <th class="text-center">NOMBRE</th>
                            <th class="text-center">ESTADO</th>
                            <th class="text-center">DESCRIPCION</th>
                            <th class="text-center">ACCIONES</th>
                        </tr>
                    </thead>
                    <%
                            AlmacenDAO dao= new AlmacenDAO();
                            List<Almacen>list=dao.listar();
                            Iterator<Almacen>iter=list.iterator();
                            Almacen al=null;
                            while(iter.hasNext()){
                                al=iter.next();
                            
                     %>
                    <tbody>
                        <tr>
                            <td class="text-center"><%=al.getIdAlmacen()%></td>
                            <td class="text-center"><%=al.getNombre()%></td>
                            <td class="text-center"><%=al.getEstado()%></td>
                            <td class="text-center"><%=al.getDescripcion()%></td>
                            <td class="text-center">
                                <a class="btn btn-warning" href="ControladorAlm?accion=editar&id=<%=al.getIdAlmacen()%>">EDITAR</a>
                                <a class="btn btn-danger" href="ControladorAlm?accion=eliminar&id=<%=al.getIdAlmacen()%>">REMOVER</a>
                                
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>

        </div>
    </body>
</html>

