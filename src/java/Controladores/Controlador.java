/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Proveedor;
import Modelos.ProveedorDAO;
import Modelos.Usuario;
import Modelos.UsuarioDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


/**
 *
 * @author AdminSena
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    Usuario usuario = new Usuario();
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    int idUsuario;

    //PROVEEDOR
    String listar = "Proveedor/listarProv.jsp";
    String add = "Proveedor/agregarProv.jsp";
    String edit = "Proveedor/actualizarProv.jsp";
    Proveedor prov = new Proveedor();
    ProveedorDAO dao = new ProveedorDAO();
    int id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String menu = request.getParameter("menu");

        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
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
            int id = Integer.parseInt(request.getParameter("txtIdProveedor"));
            String nombre = request.getParameter("txtNombre");
            String direccion = request.getParameter("txtDireccion");
            String telefono = request.getParameter("txtTelefono");
            String RUC = request.getParameter("txtRUC");
            String email = request.getParameter("txtEmail");
            prov.setIdProveedor(id);
            prov.setNombre(nombre);
            prov.setDireccion(direccion);
            prov.setTelefono(telefono);
            prov.setRUC(RUC);
            prov.setEmail(email);
            dao.add(prov);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idper", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            id = Integer.parseInt(request.getParameter("txtIdProveedor"));
            String nombre = request.getParameter("txtNombre");
            String direccion = request.getParameter("txtDireccion");
            String telefono = request.getParameter("txtTelefono");
            String RUC = request.getParameter("txtRUC");
            String email = request.getParameter("txtEmail");
            prov.setIdProveedor(id);
            prov.setNombre(nombre);
            prov.setDireccion(direccion);
            prov.setTelefono(telefono);
            prov.setRUC(RUC);
            prov.setEmail(email);
            dao.editar(prov);
            acceso = listar;

        } else if (action.equalsIgnoreCase("eliminar")) {
            id = Integer.parseInt(request.getParameter("id"));
            prov.setIdProveedor(id);
            dao.eliminar(id);
            acceso = listar;
        }

        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);

    }

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
