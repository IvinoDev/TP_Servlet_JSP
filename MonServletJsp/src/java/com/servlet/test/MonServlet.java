/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mdkayantao
 */
public class MonServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    List<utilisateur> Liste = new ArrayList();

    public class utilisateur {

        private String nom;
        private String prenom;
        private String pseudo;
        private String mail;
        private String password;
        private String passwordv;

        public void setNom(String nom) {
            this.nom=nom;
        }
         public String getNom() {
            return nom;
        }

        public String getPrenom() {
            return prenom;
        }

        public void setPrenom(String prenom) {
            this.prenom = prenom;
        }

        public String getPseudo() {
            return pseudo;
        }

        public void setPseudo(String pseudo) {
            this.pseudo = pseudo;
        }

        public String getMail() {
            return mail;
        }

        public void setMail(String mail) {
            this.mail = mail;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }

        public String getPasswordv() {
            return passwordv;
        }

        public void setPasswordv(String passwordv) {
            this.passwordv = passwordv;
        }

        public utilisateur() {

        }

        public utilisateur(String nom,
                String prenom,
                String pseudo,
                String mail,
                String password,
                String passwordv) {
            this.nom = nom;
            this.prenom = prenom;
            this.pseudo = pseudo;
            this.mail = mail;
            this.password = password;
            this.passwordv = passwordv;
        }
    };

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if (request.getParameter("envoyer") != null) {
            String nom = request.getParameter("user_nom");
            String prenom = request.getParameter("user_prenom");
            String pseudo = request.getParameter("user_pseudo");
            String mail = request.getParameter("user_mail");
            String password = request.getParameter("user_password");
            String passwordv = request.getParameter("user_passwordv");
            
            if (password.equals(passwordv)) {
                
                utilisateur User = new utilisateur(nom, prenom, pseudo, mail, password, passwordv);
                Liste.add(User);
                request.setAttribute("liste", Liste);
                request.getRequestDispatcher("accueil.jsp").forward(request, response);
            } else {
                try (PrintWriter out = response.getWriter()) {
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>echec de l'inscription</title>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<h3> Les deux mots de passe ne sont les même</h3>");
                    out.println("</body>");
                    out.println("</html>");
                }
            }
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
