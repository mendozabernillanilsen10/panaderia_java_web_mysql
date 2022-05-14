
<%@page import="Modelos.persona"%>
<%@page import="Modelos.personaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>EDITAR PERSONAS</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
              <%
                    personaDAO dao = new personaDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idper"));
                    persona p = (persona) dao.list(id);
              %>
            <h1>Modificar Persona</h1>
            <form action="ControladorP">
                ID_Persona: <br>
                <input class="form-control" type="text" name="txtID_Persona" value="<%= p.getID_Persona()%>">
                Nombre:<br>
                <input class="form-control" type="text" name="txtNombre" value="<%= p.getNombre()%>"><br>
                Apellido_PA: <br>
                <input class="form-control" type="text" name="txtApellido_PA" value="<%= p.getApellido_PA()%>"><br>
                Apellido_MA: <br>
                <input class="form-control" type="text" name="txtApellido_MA" value="<%= p.getApellido_MA()%>"><br>
                Sexo: <br>
                <input class="form-control" type="text" name="txtSexo" value="<%= p.getSexo()%>"><br>
                DNI: <br>
                <input class="form-control" type="text" name="txtDNI" value="<%= p.getDNI()%>"><br>
                FechaNacimiento: <br>
                <input class="form-control" type="text" name="txtFechaNacimiento" value="<%= p.getFechaNacimiento()%>"><br>
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="ControladorP?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>
