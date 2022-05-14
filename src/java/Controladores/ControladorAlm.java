/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Almacen;
import Modelos.AlmacenDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ControladorAlm extends HttpServlet {

    String listar = "Almacen/listar.jsp";
    String add = "Almacen/add.jsp";
    String edit = "Almacen/edit.jsp";
    Almacen a = new Almacen();
    AlmacenDAO dao = new AlmacenDAO();
    int id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorAlm</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorAlm at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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

            int idAlmacen = Integer.parseInt(request.getParameter("txtIdAlmacen"));

            /*String id=request.getParameter("txtID");*/
            String nom = request.getParameter("txtNombre");
            String est = request.getParameter("txtEstado");
            String desc = request.getParameter("txtDescripcion");
            /*a.setId(id);*/
            a.setIdAlmacen(idAlmacen);
            a.setNombre(nom);
            a.setEstado(est);
            a.setDescripcion(desc);
            dao.add(a);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idalma", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {

            id = Integer.parseInt(request.getParameter("txtIdAlmacen"));

            String nom = request.getParameter("txtNombre");
            String est = request.getParameter("txtEstado");
            String desc = request.getParameter("txtDescripcion");
            /*a.setId(id);*/
            a.setIdAlmacen(id);

            a.setNombre(nom);
            a.setEstado(est);
            a.setDescripcion(desc);
            dao.edit(a);
            acceso = listar;

        } else if (action.equalsIgnoreCase("eliminar")) {
            id = Integer.parseInt(request.getParameter("id"));
            a.setIdAlmacen(id);
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
