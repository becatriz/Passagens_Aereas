/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class ServeletPassagensAereas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String jsp = null;
            
            if(request.getRequestURI().endsWith("/inicio")){
                jsp = "home.jsp";
            }else if(request.getRequestURI().endsWith("/destinos")){
                jsp = "destination.jsp";
            }else if(request.getRequestURI().endsWith("/conta")){
                jsp = "account.jsp";
            }else if(request.getRequestURI().endsWith("/registrar")){
                jsp = "register.jsp";
            }else if(request.getRequestURI().endsWith("/mensagem")){
                jsp = "message.jsp";
            }else if(request.getRequestURI().endsWith("/resumo")){
                jsp = "resume.jsp";
            }else if(request.getRequestURI().endsWith("/pagamento")){
                jsp = "payment.jsp";
            }else if(request.getRequestURI().endsWith("/lugares")){
                jsp = "seating.jsp";
            }
             request.getRequestDispatcher(jsp).forward(request, response);
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
