

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar Producto</h1>
                <form action="ControladorProduc">
                    IdTipoProducto:<br> 
                    <input type="text" name="txtidTipoProducto"><br>
                    IdProduccion: <br>
                    <input type="text" name="txtidProduccion"><br>
                    Nombre: <br>
                    <input type="text" name="txtnombre"><br>
                    Cantidad: <br>
                    <input type="text" name="txtcantidad"><br>
                    Precio: <br>
                    <input type="text" name="txtprecio"><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <a href="ControladorProduc?accion=listar">Regresar</a>
                </form>
            </div>
        </div>
    </body>
</html>
