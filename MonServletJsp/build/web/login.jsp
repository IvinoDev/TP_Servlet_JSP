<%-- 
    Document   : login
    Created on : 25 juil. 2022, 15:04:14
    Author     : mdkayantao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class=" fvj idc0_341">
<head>
    <meta charset="UTF-8">
    <title>Connexion</title>
    <link rel="stylesheet" href="style_3.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body cz-shortcut-listen="true">
    <div class="container">
        <div class="title">Page de Connexion</div>

        <div class="content">
            <form action="" method="post">
                <div class="user-details">
                    <div class="input-box">
                        <span class="details">Pseudo</span>
                        <input type="text" id="pseudo" name="user_pseudo" placeholder="Entrez votre pseudo">
                    </div><br>
                    <div class="input-box">
                        <span class="details">Mot de passe</span>
                        <input type="password" id="password" name="user_password"
                            placeholder="Entrez votre mot de passe">
                    </div>
                </div>
                <div class="button">
                    <input type="submit" name="envoyer" value="Connexion">
                </div>
            </form>
        </div>
    </div>
    <div></div>
</body>
</html>