<%-- 
    Document   : add
    Created on : 25/10/2021, 12:18:22 AM
    Author     : omar
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
            <h1>AGREGAR ALMACENES</h1>
            <form action="ControladorAlm">
                ID:<br>
                <input class="form-control" type="text" name="txtIdAlmacen"><br>
                NOMBRE:<br>
                <input class="form-control" type="text" name="txtNombre"><br>
                ESTADO:<br>
                <input  class="form-control" type="text" name="txtEstado"><br>
                DESCRIPCION:<br>
                <input class="form-control" type="text" name="txtDescripcion"><br>
                
                <input class="btn btn-primary" type="submit" name="accion" value="AGREGAR"><br>
                <a href="ControladorAlm?accion=listar">Regresar</a>
                
            </form>
        </div>
        </div>
    </body>
</html>

