
<%@page import="java.util.Iterator"%>
<%@page import="Modelos.persona"%>
<%@page import="java.util.List"%>
<%@page import="Modelos.personaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Registro Persona</title>
    </head>
    <body>
        <div class="container">
            <br>
            <br>
            <a class="btn btn-success" href="ControladorP?accion=add">Nuevo Registro</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Apellido_PA</th>
                        <th class="text-center">Apellido_MA</th>
                        <th class="text-center">Sexo</th>
                        <th class="text-center">DNI</th>
                        <th class="text-center">FechaNacimiento</th>
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    personaDAO dao=new personaDAO();
                    List<persona>list=dao.listar();
                    Iterator<persona>iter=list.iterator();
                    persona per=null;
                    while(iter.hasNext()){
                        per=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= per.getID_Persona()%></td>
                        <td class="text-center"><%= per.getNombre()%></td>
                        <td class="text-center"><%= per.getApellido_PA()%></td>
                        <td class="text-center"><%= per.getApellido_MA()%></td>
                        <td class="text-center"><%= per.getSexo()%></td>
                        <td class="text-center"><%= per.getDNI()%></td>
                        <td class="text-center"><%= per.getFechaNacimiento()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="ControladorP?accion=editar&id=<%= per.getID_Persona()%>">Editar</a>
                            <a class="btn btn-danger" href="ControladorP?accion=eliminar&id=<%= per.getID_Persona()%>">Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
