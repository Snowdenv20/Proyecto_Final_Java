/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Modelo.Empleado;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author eriki
 */
public class sr_empleado extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Empleado empleado;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet sr_empleado</title>");            
            out.println("</head>");
            out.println("<body>");
            /*out.println("<h1>Puesto "+Integer.parseInt(request.getParameter("drop_puesto"))+"</h1>");
            out.println("<h1>id "+Integer.parseInt(request.getParameter("txt_id"))+"</h1>");
            out.println("<h1>name "+request.getParameter("txt_nombres")+"</h1>");
            out.println("<h1>apellidos "+request.getParameter("txt_apellidos")+"</h1>");
            out.println("<h1>direccion "+request.getParameter("txt_direccion")+"</h1>");
            out.println("<h1>telefono "+request.getParameter("txt_telefono")+"</h1>");
            out.println("<h1>fn "+request.getParameter("txt_fn")+"</h1>");
            out.println("<h1>dpi "+request.getParameter("txt_DPI")+"</h1>");
            out.println("<h1>fi "+request.getParameter("txt_fechaIngreso")+"</h1>");
            out.println("<h1>fin "+request.getParameter("txt_fechaInicio")+"</h1>");
             out.println("<h1>genero "+Integer.parseInt(request.getParameter("txt_genero"))+"</h1>");
            */
            
              empleado = new Empleado(Integer.parseInt(request.getParameter("drop_puesto")),Integer.parseInt(request.getParameter("txt_id")),
            request.getParameter("txt_nombres"),request.getParameter("txt_apellidos"),request.getParameter("txt_direccion"),request.getParameter("txt_telefono"),
            request.getParameter("txt_fn"),request.getParameter("txt_DPI"),request.getParameter("txt_fechaIngreso"),request.getParameter("txt_fechaInicio"),Integer.parseInt(request.getParameter("drop_genero")));
            // Boton agregar 
             
            if ("agregar".equals(request.getParameter("btn_agregar"))){
             if (empleado.agregar()>0){
             response.sendRedirect("Empleados.jsp");
             
             }else{
             out.println("<h1> xxxxxxx No se Ingreso xxxxxxxxxxxx </h1>");
             out.println("<a href='Empleados.jsp'>Regresar...</a>");
             }
             }
            
            // Boton modificar 
            if ("modificar".equals(request.getParameter("btn_modificar"))){
             if (empleado.modificar()>0){
             response.sendRedirect("Empleados.jsp");
             
             }else{
             out.println("<h1> xxxxxxx No se Modifico xxxxxxxxxxxx </h1>");
             out.println("<a href='Empleados.jsp'>Regresar...</a>");
             }
             }
            
            // Boton eliminar 
            if ("eliminar".equals(request.getParameter("btn_eliminar"))){
             if (empleado.eliminar()>0){
             response.sendRedirect("Empleados.jsp");
             
             }else{
             out.println("<h1> xxxxxxx No se Elimino xxxxxxxxxxxx </h1>");
             out.println("<a href='Empleados.jsp'>Regresar...</a>");
             }
             }
            
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
        processRequest(request, response);
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
