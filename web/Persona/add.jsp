
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>REGISTRO R Y M</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1>AGREGAR PERSONA</h1>
                <form action="ControladorP">
                    ID_Persona:<br>
                    <input class="form-control" type="text" name="txtID_Persona"><br>
                    Nombre:<br>
                    <input class="form-control" type="text" name="txtNombre"><br>
                    Apellido_PA: <br>
                    <input class="form-control" type="text" name="txtApellido_PA"><br>
                    Apellido_MA: <br>
                    <input class="form-control" type="text" name="txtApellido_MA"><br>
                    Sexo: <br>
                    <input class="form-control" type="text" name="txtSexo"><br>
                    DNI: <br>
                    <input class="form-control" type="text" name="txtDNI"><br>
                    FechaNacimiento: <br>
                    <input class="form-control" type="text" name="txtFechaNacimiento"><br>

                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <a href="ControladorP?accion=listar">Regresar</a>
                </form>
            </div>

        </div>
    </body>
</html>
