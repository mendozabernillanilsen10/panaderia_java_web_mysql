
<%@page import="Modelos.Proveedor"%>
<%@page import="Modelos.ProveedorDAO"%>
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
                    ProveedorDAO dao = new ProveedorDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idper"));
                    Proveedor prov = (Proveedor) dao.list(id);
                %>
                <h1>Modificar Persona</h1>
                <form action="Controlador">
                    ID<br>
                    <input class="form-control" type="text" name="txtIdProveedor" value="<%=prov.getIdProveedor()%>"><br>
                    Nombres:<br>
                    <input class="form-control" type="text" name="txtNombre" value="<%=prov.getNombre()%>"><br>
                    Direccion:<br>
                    <input class="form-control" type="text" name="txtDireccion" value="<%=prov.getDireccion()%>"><br>
                    Teléfono:<br>
                    <input class="form-control" type="text" name="txtTelefono" value="<%=prov.getTelefono()%>"><br>
                    RUC:<br>
                    <input class="form-control" type="text" name="txtRUC" value="<%=prov.getRUC()%>"><br>
                    Email:<br>
                    <input class="form-control" type="text" name="txtEmail" value="<%=prov.getEmail()%>"><br>
                    <input class="btn btn-warning" type="submit" name="accion" value="Actualizar"><br>
                    <a href="Controlador?accion=listar">Regresar</a>
                </form>
            </div>
        </div>
    </body>
</html>
