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
	<style type="text/css">
		body {
			text-align: center;
			font-size: 1.1em;
			font-family: roboto, arial;
		}
		div {
			padding-top: 5px;
			padding-bottom: 3px;
		}
		
		input {
			padding-left: 8px;
		}
	
	</style>
</head>
<body>
	<h1>Veuillez renseigner vos informations</h1>
	<form action="MonServlet" method="post">
		<div>
			<label for="nom">Nom :</label>
			<input type="text" id="nom" name="user_nom" required>     
		</div>    
		<div>
			<label for="prenom">Prénom :</label>
			<input type="text" id="prenom" name="user_prenom" required>     
		</div>   
		<div>
			<label for="text">Pseudo :</label>
			<input type="text" id="pseudo" name="user_pseudo" required>     
		</div>         
		<div>        
			 <label for="mail">Adresse e-mail&nbsp;:</label>         
			 <input type="email" id="mail" name="user_mail" required>     
		 </div>     
		 <div>         
			 <label for="password">Mot de passe :</label>         
			 <input type="password" id="password" name="user_password" required>   
		 </div> 
		  <div>         
			 <label for="passwordv">Répetez le mot de passe :</label>         
			 <input type="password" id="passwordv" name="user_passwordv">   
		 </div>
		 <input type="reset" value="Effacer">
                 <input type="submit" id="envoyer"  name="envoyer" value="Envoyer"> 
	</form>
</html>