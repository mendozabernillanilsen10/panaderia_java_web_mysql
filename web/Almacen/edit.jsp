<%-- 
    Document   : edit
    Created on : 25/10/2021, 12:19:54 AM
    Author     : omar
--%>

<%@page import="Modelos.Almacen"%>
<%@page import="Modelos.AlmacenDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
            <%
                AlmacenDAO dao= new AlmacenDAO();
                int id = Integer.parseInt((String)request.getAttribute("idalma"));
                Almacen a=(Almacen)dao.list(id);
            %>
            
            
            <h1>MODIFICAR ALMACENES</h1>
            <form action="ControladorAlm">
                ID:<br>
                <input class="form-control" type="text" name="txtIdAlmacen" value="<%=a.getIdAlmacen()%>"><br>
                NOMBRE:<br>
                <input class="form-control" type="text" name="txtNombre" value="<%=a.getNombre()%>"><br>
                ESTADO:<br>
                <input class="form-control" type="text" name="txtEstado" value="<%=a.getEstado()%>"><br>
                DESCRIPCION:<br>
                <input class="form-control" type="text" name="txtDescripcion" value="<%=a.getDescripcion() %> "><br>
                
                <input class="btn btn-warning" type="submit" name="accion" value="Actualizar"><br>
                <a href="ControladorAlm?accion=listar">REGRESAR</a>
            </form>
         </div>
      </div>
    </body>
</html>
