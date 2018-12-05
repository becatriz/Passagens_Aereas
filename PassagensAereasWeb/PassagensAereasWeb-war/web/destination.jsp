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
        <script type="text/javascript" src="js/destination.js"></script>
    </head>
    <body >

        <div id=menu-pg2>
            <ul>
                <li><a href="${pageContext.request.contextPath}/resumo">Consultar Passagem</li></a>
               
                <li><a href="${pageContext.request.contextPath}/inicio">Home</li></a>
            </ul>
        </div>

        <h1>Origem e destino</h1>

        <form method="POST" action="${pageContext.request.contextPath}/reservar">

            <div class="div-select01">
                <h3>Escolha a Origem</h3>

                <select id="origem">
                    <option value="">Origem</option>
                    <option value="1">São Paulo</option>
                    <option value="2">Campo Grande</option>
                    <option value="3">Salvador</option>
                    <option value="4">Curitiba</option>
                </select>  
                <script type="text/javascript">
                    (function () {
                        document.getElementById('origem').addEventListener('change', function () {
                            var valor = this.value;
                            document.getElementById('localOrigem').value = valor;
                        });
                    })();
                </script>
                <input type="hidden" id="localOrigem" name="localOrigem">
            </div>

            <div class="div-select02">
                <h3>Escolha o destino</h3>
                <select id="destino">

                    <option>Destino</option>
                    <option value="1">São Paulo</option>
                    <option value="2">Campo Grande</option>
                    <option value="3">Salvador</option>
                    <option value="4">Curitiba</option>
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
                    <option value="1">13:00h</option>
                    <option value="2">22:00h</option>
                    
                </select>  
            </div>
            <div class="div-select06">
                <h3>Horario da </h3>
                <select>

                    <option >Hora Volta</option>
                    <option value="1">06:00h</option>
                    <option value="2">12:00h</option>
                   
                </select>  
            </div>
            `

           <!-- <button class="botao_continuar_vai" type="submit" name="reservar" class="form-contact-button">></button>-->
           <div class="botao_continuar" id="FormRegister">
            <p>
                <a href="${pageContext.request.contextPath}/lugares">></a>
            </p> 
        </div>

        </form>





        <div id="area">
            <form id="formulario" >
                <fieldset>
                    <legend>Dados do Passageiro</legend><br>
                    <label>Nome:</label><input name="nome" id="campo_nome" class="campo_nome" type="text" required><br><br/>
                    <label>Sobrenome:</label><input name="sobrenome" id="campo_sobrenome" class="campo_sobrenome" type="text" required><br><br/>
                    <label>Idade:</label><input  name="idade"  id="campo_idade" class="campo_idade" type="text" required><br><br>

                    <input id="enviar" class="btn_submit" type="submit" value="Enviar" >
                </fieldset>
            </form>
        </div>  


    </body>
</html>