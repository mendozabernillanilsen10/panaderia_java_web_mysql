/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Producto;
import Modelos.ProductoDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ControladorProduc extends HttpServlet {
    
    String listar="Producto/listar.jsp";
    String add="Producto/add.jsp";
    String edit="Producto/edit.jsp";
    
    Producto p=new Producto();
    ProductoDAO dao=new ProductoDAO();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorProduc</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorProduc at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
            String action=request.getParameter("accion");
            if(action.equalsIgnoreCase("listar")){
                acceso=listar;
            }else if(action.equalsIgnoreCase("add")){
                acceso=add;
                
            }
            else if(action.equalsIgnoreCase("Agregar")){
                
                int idTipoProducto = Integer.parseInt(request.getParameter("txtidTipoProducto")); 
                int idProduccion = Integer.parseInt(request.getParameter("txtidProduccion")); 
                String nombre=request.getParameter("txtnombre");   
                int cantidad = Integer.parseInt(request.getParameter("txtcantidad")); 
                int precio = Integer.parseInt(request.getParameter("txtprecio")); 
                             
                p.setIdTipoProducto(idTipoProducto);
                p.setIdProduccion(idProduccion);
                p.setNombre(nombre);
                p.setCantidad(cantidad);
                p.setPrecio(precio);
                dao.add(p);
                acceso=listar;
            }
            RequestDispatcher vista=request.getRequestDispatcher(acceso);
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
