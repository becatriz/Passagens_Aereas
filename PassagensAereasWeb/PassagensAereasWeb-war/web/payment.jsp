<%-- 
    Document   : payment
    Created on : 10/11/2018, 18:00:48
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagamento</title>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
    </head>
    </head>
    <body>
         <div id=menu-pg2>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/resumo">Consultar Passagem</li></a>
                    <li><a href="${pageContext.request.contextPath}/conta">Login</li></a>
                    <li><a href="${pageContext.request.contextPath}/inicio">Home</li></a>
                </ul>
            </div>
        <h1>Pagamento</h1>
        
        <div class="botao_continuar">
                <p>
                    <a href="${pageContext.request.contextPath}/resumo">></a>
                </p> 
            </div>
    </body>
</html>
