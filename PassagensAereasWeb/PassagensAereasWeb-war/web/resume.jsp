<%-- 
    Document   : resume
    Created on : 10/11/2018, 18:01:12
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Resumo Passagem</title>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
    </head>
    <body>
        <div id=menu-pg2>
            <ul>
                <li><a href="${pageContext.request.contextPath}/resumo">Consultar Passagem</li></a>
              
                <li><a href="${pageContext.request.contextPath}/inicio">Home</li></a>
            </ul>
        </div>
        <h1>Resumo da passagem</h1>
        
        <p id="criar">Para consultar sua passagem é preciso estar logado</p>

            <div class="container002">  
                <form class="form-contact" tabindex="1" method="POST" action="${pageContext.request.contextPath}/entrar2">
                    <input type="text" class="form-contact-input" name="usuario1" placeholder="Usuario" required />  
                    <input type="password" class="form-contact-input" name="senha1" placeholder="Senha" required />  

                    <button type="submit" name="entrar" class="form-contact-button">Entrar</button>  
                </form>  
            </div> 
        
        
    </body>
</html>