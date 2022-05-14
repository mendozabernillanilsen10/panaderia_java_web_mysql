

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="Modelos.Producto"%>
<%@page import="Modelos.Producto"%>
<%@page import="Modelos.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <br>
            <br>
            <a href="ControladorProduc?accion=add"><button type="button" class="btn btn-warning">Agregar Nuevo</button></a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID_PRODUCTO</th>
                        <th>ID_TIPOPRODUCTO</th>
                        <th>ID_PRODUCCION</th>
                        <th>NOMBRE</th>
                        <th>CANTIDAD</th>
                        <th>PRECIO</th>
                        
                    </tr>
                </thead>
                <%
                    ProductoDAO dao = new ProductoDAO();
                    List<Producto> list = dao.listar();
                    Iterator<Producto> iter = list.iterator();
                    Producto per = null;
                    while (iter.hasNext()) {
                        per = iter.next();

                %>
                <tbody>
                    <tr>
                        <td><%= per.getIdProducto()%></td>
                        <td><%= per.getIdTipoProducto()%></td>
                        <td><%= per.getIdProduccion()%></td>
                        <td><%= per.getNombre()%></td>
                        <td><%= per.getCantidad()%></td>
                        <td><%= per.getPrecio()%></td>
                        
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>

</html>
