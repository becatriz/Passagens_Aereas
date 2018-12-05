/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Endereco;
import model.EnderecoFacadeLocal;
import model.Usuario;
import model.UsuarioFacadeLocal;

/**
 *
 * @author Dell
 */
public class ServeletPassagensAereas extends HttpServlet {

    @EJB
    private UsuarioFacadeLocal usuarioFac;
    @EJB
    private EnderecoFacadeLocal enderecoFac;
    boolean logado = false;

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

        if (request.getRequestURI().endsWith("/inicio")) {
            jsp = "home.jsp";
        } else if (request.getRequestURI().endsWith("/destinos")) {
            jsp = "destination.jsp";
        } else if (request.getRequestURI().endsWith("/conta")) {
            jsp = "account.jsp";
        } else if (request.getRequestURI().endsWith("/registrar")) {
            jsp = "register.jsp";
        } else if (request.getRequestURI().endsWith("/mensagem")) {
            jsp = "message.jsp";
        } else if (request.getRequestURI().endsWith("/resumo")) {
            jsp = "resume.jsp";
        } else if (request.getRequestURI().endsWith("/pagamento")) {
            jsp = "payment.jsp";
        } else if (request.getRequestURI().endsWith("/lugares")) {
            jsp = "seating.jsp";
        } else if (request.getRequestURI().endsWith("/cadastrar")) {
            cadastrar(request);
            jsp = "account.jsp";
        } else if (request.getRequestURI().endsWith("/entrar")) {
            jsp = entrar(request);
        } else if (request.getRequestURI().endsWith("/entrar2")) {
            jsp = entrar2(request);
        } else if (request.getRequestURI().endsWith("final")) {
            if (logado) {
                jsp = "resumopassagem.jsp";
            } else {
                jsp = "resume.jsp";
            }
        }
        request.getRequestDispatcher(jsp).forward(request, response);
    }

    public void cadastrar(HttpServletRequest request) {
        try {
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String cpf = request.getParameter("cpf");

            String telefone = request.getParameter("tel");

            String usuario = request.getParameter("usuario");
            String senha = request.getParameter("senha");

            Usuario u = new Usuario(nome, email, cpf, telefone, usuario, senha);
            usuarioFac.create(u);
            u = usuarioFac.findByLogin(usuario);
            long idU = u.getId();
            if (usuario != null) {
                criarEndereco(request, idU);
                request.setAttribute("mensagem", "O usuário " + usuario + " foi salvo com sucesso!");
            }
        } catch (EJBException e) {
            request.setAttribute("mensagem", "Falha ao salvar o usuário.");
        }
    }

    public void criarEndereco(HttpServletRequest request, long idUsuario) {
        try {
            String rua = request.getParameter("rua");
            int numero = Integer.parseInt(request.getParameter("numero"));
            String bairro = request.getParameter("bairro");
            String cidade = request.getParameter("cidade");
            String estado = request.getParameter("estado");
            String pais = request.getParameter("pais");

            Endereco e = new Endereco(rua, numero, bairro, cidade, estado, pais, idUsuario);
            enderecoFac.create(e);
        } catch (EJBException ex) {
            request.setAttribute("mensagem", "Falha ao cadastrar.");
        }
    }

    public String entrar(HttpServletRequest request) {
        String tela = "account.jsp";
        try {

            String usuario = request.getParameter("usuario1");
            String senha = request.getParameter("senha1");

            Usuario u = usuarioFac.findByLogin(usuario);
            if (u.getSenha().equals(senha)) {
                request.setAttribute("mensagem", "Usuário logado.");
                logado = true;
                tela = "payment.jsp";
            } else {
                request.setAttribute("mensagem", "Usuario ou senha inválidos.");
                logado = false;
                tela = "account.jsp";
            }
        } catch (EJBException e) {
            request.setAttribute("mensagem", "Falha ao efetuar login.");
        }
        return tela;
    }

    public String entrar2(HttpServletRequest request) {
        String tela = "resume.jsp";
        try {

            String usuario = request.getParameter("usuario1");
            String senha = request.getParameter("senha1");

            Usuario u = usuarioFac.findByLogin(usuario);
            if (u != null) {
                if (u.getSenha().equals(senha)) {
                    request.setAttribute("mensagem", "Usuário logado.");
                    logado = true;
                    tela = "resumopassagem.jsp";
                } else {
                    request.setAttribute("mensagem", "Usuario ou senha inválidos.");
                    logado = false;
                    tela = "resume.jsp";
                }
            }
        } catch (EJBException e) {
            request.setAttribute("mensagem", "Falha ao efetuar login.");
        }
        return tela;
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
