<%-- 
    Document   : destination
    Created on : 10/11/2018, 17:59:40
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>Destinos</title>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
    </head>
    <body >

        <div id=menu-pg2>
            <ul>
                <li><a href="${pageContext.request.contextPath}/resumo">Consultar Passagem</li></a>
                <li><a href="${pageContext.request.contextPath}/conta">Login</li></a>
                <li><a href="${pageContext.request.contextPath}/inicio">Home</li></a>
            </ul>
        </div>

            <h1>Origem e destino</h1>

        
        <div class="div-select01">
             <h3>Escolha a Origem</h3>
            <select>
                <option>Origem</option>
                <option>Primeira opção</option>
                <option>Segunda opção</option>
                <option>Terceira opção</option>
                <option>Quarta opção</option>
            </select>  
        </div>

        <div class="div-select02">
             <h3>Escolha o destino</h3>
            <select>
                
                <option>Destino</option>
                <option>Primeira opção</option>
                <option>Segunda opção</option>
                <option>Terceira opção</option>
                <option>Quarta opção</option>
            </select>  
        </div>

        <div class="div-select03">
            <h3>Data Ida</h3>
            <input id="date" type="date"  >
        </div>
        <div class="div-select04">
              <h3>Data Volta</h3>
            <input id="date" type="date" >

        </div>
         <div class="div-select05">
             <h3>Escolha o destino</h3>
            <select>
                
                <option>Hora Ida</option>
                <option>Primeira opção</option>
                <option>Segunda opção</option>
                <option>Terceira opção</option>
                <option>Quarta opção</option>
            </select>  
        </div>
         <div class="div-select06">
             <h3>Horario da </h3>
            <select>
                
                <option>Hora Volta</option>
                <option>Primeira opção</option>
                <option>Segunda opção</option>
                <option>Terceira opção</option>
                <option>Quarta opção</option>
            </select>  
        </div>
        

        <!--Botao continuar-->
        <div class="botao_continuar">
            <p>
                <a href="${pageContext.request.contextPath}/registrar">></a>
            </p> 
        </div>
    </body>
</html>
