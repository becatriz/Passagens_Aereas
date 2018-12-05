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
           
            <li><a href="${pageContext.request.contextPath}/inicio">Home</li></a>
        </ul>
    </div>
    <h1>Pagamento</h1>

    <div class="container04">  


        <div class="div-select01">


            <select id="cartao">
                <option value="c_d">Cartao Credito </option>
                <option value="c_c">Cartao Debito</option>

            </select>  
            <div class="container04">
                <form class="form-contact" tabindex="1" method="POST" action="${pageContext.request.contextPath}/entrar">
                    <input type="text" class="form-contact-input" name="numero_cartao" placeholder="Numero Cartão" required />  
                    <input type="password" class="form-contact-input" name="ano_mes" placeholder="_/_/" required />
                    <input type="password" class="form-contact-input" name="validade" placeholder="CVC" required /> 

                    <button type="submit" name="entrar" class="form-contact-button">Pagar</button>  
                </form>  
            </div>
        </div> 

        <div class="boleto"
             <h3>Boleto Bancario</h3>

            <form action="/action_page.php">
                <input type="radio" name="gender" value="male"> Sim<br>
                <input type="radio" name="gender" value="female"> Não<br>
            </form>
        </div>

        <form action="javascript:void(0);" method="post" class="login-form">
            <input type="text" class="login-form__input" id="username" name="username" placeholder="Username" maxlength="50">
            <input type="password" class="login-form__input" id="password" name="password" placeholder="Password" maxlength="50">
            <input type="submit" class="login-form__submit" id="enviar" value="login">
            <a href="javascript:void(0);" class="login-form__forgot">

            </a>
        </form>

        <div class="wps-bn">

            <form id="wps-bn" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">

                <!--Tipo do botão-->
                <input type="hidden" name="cmd" value="_xclick" />

                <!--Vendedor e URL de retorno, cancelamento e notificação-->
                <input type="hidden" name="business" value="teste@empresa.com.br" />
                <input type="hidden" name="return" value="http://loja.com.br/retorno" />
                <input type="hidden" name="cancel" value="http://loja.com.br/cancelamento" />
                <input type="hidden" name="notify_url" value="http://loja.com.br/notificacao" />

                <!--Internacionalização e localização da página de pagamento-->
                <input type="hidden" name="charset" value="utf-8" />
                <input type="hidden" name="lc" value="BR" />
                <input type="hidden" name="country_code" value="BR" />
                <input type="hidden" name="currency_code" value="BRL" />

                <!--Informações sobre o produto e seu valor-->
                <input type="hidden" name="amount" value="172.00" />
                <input type="hidden" name="item_name" value="Servico" />
                <input type="hidden" name="quantity" value="1" />

                <!--Botão para submissão do formulário-->
                <input type="image" src="https://www.paypalobjects.com/pt_BR/BR/i/btn/btn_buynowCC_LG.gif" />
            </form>
        </div>

        <div class="botao_continuar_vai_vai">
            <form method="POST" action="${pageContext.request.contextPath}/final">
                <button class="botao_continuar_vai" type="submit" name="final">></button>
            </form>
        </div>
</body>
</html>