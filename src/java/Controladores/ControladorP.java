/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.persona;
import Modelos.personaDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class ControladorP extends HttpServlet {

    String listar = "Persona/listar.jsp";
    String add = "Persona/add.jsp";
    String edit = "Persona/edit.jsp";
    persona p = new persona();
    personaDAO dao = new personaDAO();
    int id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Agregar")) {
            int id = Integer.parseInt(request.getParameter("txtID_Persona"));
            String Nombre = request.getParameter("txtNombre");
            String Apellido_PA = request.getParameter("txtApellido_PA");
            String Apellido_MA = request.getParameter("txtApellido_MA");
            String Sexo = request.getParameter("txtSexo");
            String DNI = request.getParameter("txtDNI");
            String FechaNacimiento = request.getParameter("txtFechaNacimiento");
            p.setID_Persona(id);
            p.setNombre(Nombre);
            p.setApellido_PA(Apellido_PA);
            p.setApellido_MA(Apellido_MA);
            p.setSexo(Sexo);
            p.setDNI(DNI);
            p.setFechaNacimiento(FechaNacimiento);
            dao.add(p);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idper", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            id = Integer.parseInt(request.getParameter("txtID_Persona"));
            String Nombre = request.getParameter("txtNombre");
            String Apellido_PA = request.getParameter("txtApellido_PA");
            String Apellido_MA = request.getParameter("txtApellido_MA");
            String Sexo = request.getParameter("txtSexo");
            String DNI = request.getParameter("txtDNI");
            String FechaNacimiento = request.getParameter("txtFechaNacimiento");

            p.setID_Persona(id);
            p.setNombre(Nombre);
            p.setApellido_PA(Apellido_PA);
            p.setApellido_MA(Apellido_MA);
            p.setSexo(Sexo);
            p.setDNI(DNI);
            p.setFechaNacimiento(FechaNacimiento);
            dao.edit(p);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            id = Integer.parseInt(request.getParameter("id"));
            p.setID_Persona(id);
            dao.eliminar(id);
            acceso = listar;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
