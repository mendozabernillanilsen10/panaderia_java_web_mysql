<%-- 
    Document   : listarProv
    Created on : 23-oct-2021, 16:01:18
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelos.Proveedor"%>
<%@page import="java.util.List"%>
<%@page import="Modelos.ProveedorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <br>
            <br>
            <a href="Controlador?accion=add"><button type="button" class="btn btn-warning">Agregar Nuevo</button></a> 
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">NOMBRES</th>
                        <th class="text-center">DIRECCIÓN</th>
                        <th class="text-center">TELÉFONO</th>
                        <th class="text-center">RUC</th>
                        <th class="text-center">EMAIL</th>
                         <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    ProveedorDAO dao= new ProveedorDAO();
                    List<Proveedor>list=dao.listar();
                    Iterator<Proveedor>iter=list.iterator();
                    Proveedor prov = null;
                    while(iter.hasNext()){
                        prov=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%=prov.getIdProveedor()%></td>
                        <td class="text-center"><%=prov.getNombre()%></td>
                        <td class="text-center"><%=prov.getDireccion()%></td>
                        <td class="text-center"><%=prov.getTelefono()%></td>
                        <td class="text-center"><%=prov.getRUC()%></td>
                        <td class="text-center"><%=prov.getEmail()%></td>
                        <td class="text-center">
                            <a href="Controlador?accion=editar&id=<%=prov.getIdProveedor()%>"><button type="button" class="btn btn-info">Editar</button></a>
                            <a href="Controlador?accion=eliminar&id=<%=prov.getIdProveedor()%>"><button type="button" class="btn btn-danger">Remove</button></a>
                        </td>
                    </tr>
                   <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
