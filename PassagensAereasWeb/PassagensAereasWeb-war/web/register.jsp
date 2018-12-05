<%-- 
    Document   : register
    Created on : 10/11/2018, 17:59:54
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Registrar</title>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
     
    </head>
    <body>

        <div id=menu-pg2>
            <ul>
                <li><a href="${pageContext.request.contextPath}/resumo">Consultar Passagem</li></a>
              
                <li><a href="${pageContext.request.contextPath}/inicio">Home</li></a>
            </ul>
        </div>
        <h1>Passageiros</h1>

        <div id="area">
            <form id="formulario" >
                <fieldset>
                    <legend>Dados do Passageiro</legend><br>
                    <label>Nome:</label><input class="campo_nome" type="text"><br><br/>
                    <label>Sobrenome:</label><input class="campo_sobrenome" type="text"><br><br/>
                    <label>Idade:</label><input class="campo_idade" type="text"><br><br>

                    <input class="btn_submit" type="submit" value="Enviar" >
                </fieldset>
            </form>
        </div>  
       
        <div class="botao_continuar">
            <p>
                <a href="${pageContext.request.contextPath}/lugares">></a>
            </p> 
        </div>
             <p id="passageiro">Registrar outro(a) passageiro(as)?</p>
             
    </body>
</html>
