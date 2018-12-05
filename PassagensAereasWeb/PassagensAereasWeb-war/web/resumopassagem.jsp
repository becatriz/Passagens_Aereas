<%-- 
    Document   : resumopassagem
    Created on : 04/12/2018, 22:47:14
    Author     : Marcelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Resumo Passagem</title>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">

        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                margin-left: 30%;
                margin-right: 30%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>
    </head>
    <body>
        <div id=menu-pg2>
            <ul>
                <li><a href="${pageContext.request.contextPath}/resumo">Consultar Passagem</a></li>
               
                <li><a href="${pageContext.request.contextPath}/inicio">Home</a></li>
            </ul>
        </div>
        <h1>Resumo Passagem</h1>

        <div class="resumop" >

            <table>
                <tr>
                    <th>Nome Passageiro</th>
                    <th>Voo</th>
                    <th>Origem</th>
                    <th>Destino</th>
                    <th>Data Ida</th>
                    <th>Horario Ida</th>
                    <th>Data Volta</th>
                    <th>Horario Volta</th>
                    <th>Asseto</th>
                    <th>Valor</th>
                </tr>
                <tr>
                    <td>Alfreds Futterkiste</td>
                    <td>547</td>
                    <td>Sao Paulo</td>
                    <td>Curitiba</td>
                    <td>02.02.2019</td>
                    <td>22:00</td>
                    <td>05.02.2019</td>
                    <td>12:00</td>
                    <td>D 7</td>
                    <td>R$399,00</td>
                    
                </tr>
            </table>

        </div>

    </body>
</html>