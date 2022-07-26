<%-- 
    Document   : login
    Created on : 25 juil. 2022, 15:04:14
    Author     : mdkayantao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Connexion</title>
	<style type="text/css">
	  	body {
			font-family: roboto, arial;
			text-align: center;
	  	}
        div {
        	font-size: 1.1em;
        	padding: 10px;
     		margin-top: 10px;
        }
    </style>
</head>
<body>
	<h1>Veuillez vous connecter</h1>
	<form action="">
		<div>
			<label for="text">Pseudo :</label>
			<input type="text" id="pseudo" name="user_pseudo" required><br>                  
			<label for="password">Mot de passe :</label>         
			<input type="password" id="password" name="user_password" required><br>   
		 	<input type="reset" value="Effacer">
         	<input type="submit" value="Connexion"> 
          </div> 
	</form>
</body>
</html>
