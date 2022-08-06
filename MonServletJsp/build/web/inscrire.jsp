<%-- 
    Document   : inscrire
    Created on : 25 juil. 2022, 15:00:22
    Author     : mdkayantao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Inscription</title>
        <link rel="stylesheet" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
        <div class="container">
            <div class="title">Formulaire d'inscription</div>
             <%
            String erreur = (String) request.getAttribute("erreur");
            if (erreur != null){
        %>
        <p class="erreur"><span><% out.print(erreur); %></span></p>
        <%
            }
        %>
            <div class="content">
                <form action="MonServlet" method="post">
                    <div class="user-details">
                        <div class="input-box">
                            <span class="details">Nom</span>
                            <input type="text" id="nom" name="user_nom" placeholder="Entrez votre nom">
                        </div>
                        <div class="input-box">
                            <span class="details">Prénom</span>
                            <input type="text" id="prenom" name="user_prenom" placeholder="Entrez votre prénom">
                        </div>
                        <div class="input-box">
                            <span class="details">Pseudo</span>
                            <input type="text" id="pseudo" name="user_pseudo" placeholder="Entrez votre pseudo">
                        </div>
                        <div class="input-box">
                            <span class="details">E-mail</span>
                            <input type="email" id="mail" name="user_mail" placeholder="Entrez une adresse e-mail">
                        </div>
                        <div class="input-box">
                            <span class="details">Mot de passe</span>
                            <input type="password" id="password" name="user_password" placeholder="Tapez un mot de passe">
                        </div>
                        <div class="input-box">
                            <span class="details">Confirmez votre mot de passe</span>
                            <input type="password" id="passwordv" name="user_passwordv" placeholder="Répetez le mot de passe">
                        </div>
                    </div>
                    <div class="button">
                        <input type="submit"  name="envoyer" value="S'inscrire">
                    </div>
                </form>
            </div>
    </div>
</body>
</html>