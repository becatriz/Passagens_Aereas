<%-- 
    Document   : seating
    Created on : 10/11/2018, 18:00:20
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>Lugares</title>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <style type=”text/css”>
            #botao {color:#FFF; background-color:#F60; border:groove}

        </style>
        <script type="text/javascript" src="js/arquivo.js"></script>


    </head>
    <body >

        <div id=menu-pg2>
            <ul>
                <li><a href="${pageContext.request.contextPath}/resumo">Consultar Passagem</li></a>
                <li><a href="${pageContext.request.contextPath}/conta">Login</li></a>
                <li><a href="${pageContext.request.contextPath}/inicio">Home</li></a>
            </ul>
            <h1 id="ass" >Assentos</h1>


            <div class="lugares">
                <p class="a">A</p>
                <p class="b">B</p>
                <p class="c">C</p>
                <p class="d">D</p>
                <p class="e">E</p>
                <p class="f">F</p>

                <br><br>

                <p id="frente">Frente</p>
                <form class="fileira_a">
                    <input type="button" onclick="mudaBotao()" value="1" id="botao" />
                    <input type="button" onclick="mudaBotao2()" value="2" id="botao2"  />
                    <input type="button" onclick="mudaBotao3()" value="3" id="botao3"  />
                    <input type="button" onclick="mudaBotao4()" value="4" id="botao4" />
                    <input type="button" onclick="mudaBotao5()" value="5" id="botao5" />
                    <input type="button" onclick="mudaBotao6()" value="6" id="botao6" />
                    <input type="button" onclick="mudaBotao7()" value="7" id="botao7" />
                    <input type="button" onclick="mudaBotao8()" value="8" id="botao8" />
                    <input type="button" onclick="mudaBotao9()" value="9" id="botao9" />


                </form>
                <br/>
                <form class="fileira_b">
                    <input type="button" onclick="mudaBotao10()" value="1" id="botao10"/>
                    <input type="button" onclick="mudaBotao11()" value="2" id="botao11"/>
                    <input type="button" onclick="mudaBotao12()" value="3" id="botao12"/>
                    <input type="button" onclick="mudaBotao13()" value="4" id="botao13"/>
                    <input type="button" onclick="mudaBotao14()" value="5" id="botao14"/>
                    <input type="button" onclick="mudaBotao15()" value="6" id="botao15"/>
                    <input type="button" onclick="mudaBotao16()" value="7" id="botao16"/>
                    <input type="button" onclick="mudaBotao17()" value="8" id="botao17"/>
                    <input type="button" onclick="mudaBotao18()" value="9" id="botao18"/>
                </form>
                <br>

                <form class="fileira_c">
                    <input type="button" onclick="mudaBotao19()" value="1" id="botao19"/>
                    <input type="button" onclick="mudaBotao20()" value="2" id="botao20"/>
                    <input type="button" onclick="mudaBotao21()" value="3" id="botao21"/>
                    <input type="button" onclick="mudaBotao22()" value="4" id="botao22"/>
                    <input type="button" onclick="mudaBotao23()" value="5" id="botao23"/>
                    <input type="button" onclick="mudaBotao24()" value="6" id="botao24"/>
                    <input type="button" onclick="mudaBotao25()" value="7" id="botao25"/>
                    <input type="button" onclick="mudaBotao26()" value="8" id="botao26"/>
                    <input type="button" onclick="mudaBotao27()" value="9" id="botao27"/>
                </form>
                <br>
                <form class="fileira_d">
                    <input type="button" onclick="mudaBotao28()" value="1" id="botao28"/>
                    <input type="button" onclick="mudaBotao29()" value="2" id="botao29"/>
                    <input type="button" onclick="mudaBotao30()" value="3" id="botao30"/>
                    <input type="button" onclick="mudaBotao31()" value="4" id="botao31"/>
                    <input type="button" onclick="mudaBotao32()" value="5" id="botao32"/>
                    <input type="button" onclick="mudaBotao33()" value="6" id="botao33"/>
                    <input type="button" onclick="mudaBotao34()" value="7" id="botao34"/>
                    <input type="button" onclick="mudaBotao35()" value="8" id="botao35"/>
                    <input type="button" onclick="mudaBotao36()" value="9" id="botao36"/>
                </form>
                <br>
                <form class="fileira_e">
                    <input type="button" onclick="mudaBotao37()" value="1" id="botao37"/>
                    <input type="button" onclick="mudaBotao38()" value="2" id="botao38"/>
                    <input type="button" onclick="mudaBotao39()" value="3" id="botao39"/>
                    <input type="button" onclick="mudaBotao40()" value="4" id="botao40"/>
                    <input type="button" onclick="mudaBotao41()" value="5" id="botao41"/>
                    <input type="button" onclick="mudaBotao42()" value="6" id="botao42"/>
                    <input type="button" onclick="mudaBotao43()" value="7" id="botao43"/>
                    <input type="button" onclick="mudaBotao44()" value="8" id="botao44"/>
                    <input type="button" onclick="mudaBotao45()" value="9" id="botao45"/>
                </form>
                <br>
                <form class="fileira_f">
                    <input type="button" onclick="mudaBotao46()" value="1" id="botao46"/>
                    <input type="button" onclick="mudaBotao47()" value="2" id="botao47"/>
                    <input type="button" onclick="mudaBotao48()" value="3" id="botao48"/>
                    <input type="button" onclick="mudaBotao49()" value="4" id="botao49"/>
                    <input type="button" onclick="mudaBotao50()" value="5" id="botao50"/>
                    <input type="button" onclick="mudaBotao51()" value="6" id="botao51"/>
                    <input type="button" onclick="mudaBotao52()" value="7" id="botao52"/>
                    <input type="button" onclick="mudaBotao53()" value="8" id="botao53"/>
                    <input type="button" onclick="mudaBotao54()" value="9" id="botao54"/>
                </form>





                <p id="fundo">Fundo</p>
                <form class="economica">
                    <h3>Classe econômica?</h3>
                    <input type="radio" name="escolhesim" value="sim"/> Sim<br />
                    <input type="radio" name="escolhenao" value="nao"/> Não<br />

                    <input type="button" value="Limpar" onClick="history.go(0)" id="botaoApagar">
                </form>
                
                <div class="botao_continuar2">
                    <p>
                        <a href="${pageContext.request.contextPath}/conta">></a>
                    </p> 
                
                </div>





                </body>
                </html>
