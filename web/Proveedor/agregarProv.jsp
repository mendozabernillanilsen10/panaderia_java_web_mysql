<%-- 
    Document   : agregarProv
    Created on : 23-oct-2021, 16:01:03
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

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
            <div class="col-lg-6">
                <h1>Agregar Proveedor</h1>
                <form action="Controlador">
                    ID<br>
                    <input class="form-control" type="text" name="txtIdProveedor"><br>
                    Nombres:<br>
                    <input class="form-control" type="text" name="txtNombre"><br>
                    Direccion:<br>
                    <input class="form-control" type="text" name="txtDireccion"><br>
                    Teléfono:<br>
                    <input class="form-control" type="text" name="txtTelefono"><br>
                    RUC:<br>
                    <input class="form-control" type="text" name="txtRUC"><br>
                    Email:<br>
                    <input class="form-control" type="text" name="txtEmail"><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar"><br>
                    <a href="Controlador?accion=listar">Regresar</a>
                </form>
            </div>
        </div>
    </body>
</html>
