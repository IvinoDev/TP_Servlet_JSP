<%-- 
    Document   : accueil
    Created on : 25 juil. 2022, 15:01:56
    Author     : mdkayantao
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.servlet.test.MonServlet.utilisateur"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Acceuil</title>
        <style type="text/css">
            body {
                font-family: roboto, arial;
            }

            table, tr, td {
                font-size: 1em;
                border: 2px solid black;
                text-align: center;
                margin-bottom: 10px;

            }

            td {
                padding-right: 15px;	
                padding-left: 2px;
            }

            tr {
                padding-top: 5px;		
            }


            form {
                font-size: 1em;
            }


        </style>
    </head>
    <body>
        <%
            String nom = request.getParameter("user_nom");
            String prenom = request.getParameter("user_prenom");
            String pseudo = request.getParameter("user_pseudo");
            String mail = request.getParameter("user_mail");
        %>

        <h1>Bienvenue <%=nom%> <%=prenom%> !</h1>
        <h1 class="liste">Liste des utilisateurs inscrits sur la plateforme: </h1>

        <table>
            <tr>
                <td>Numero</td>
                <td>Nom</td>
                <td>Prénom</td>
                <td>Pseudo</td>
                <td>Adresse e-mail</td>
            </tr>
            <%
                List<utilisateur> liste = (ArrayList<utilisateur>) request.getAttribute("liste");
                int i = 1;
                for(utilisateur u : liste){
            %>
                <tr>
                    <td><% out.print(i);%></td>
                    <td><% out.print(u.getNom());%></td>
                    <td><% out.print(u.getPrenom());%></td>
                    <td><% out.print(u.getPseudo());%></td>
                    <td><% out.print(u.getMail());%></td>
                </tr>
            <% 
                i++;
                }
            %>
        </table>

        <form action="MonServlet2" method="post">
            <input type="submit" id="deconnexion" value="déconnexion" name="deconnexion">
        </form>

    </body>
</html>
