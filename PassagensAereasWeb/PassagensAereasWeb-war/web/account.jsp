<%-- 
    Document   : account
    Created on : 10/11/2018, 18:00:35
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Cadastro</title>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
    </head>
    <body>

        <div id=menu>

            <div id=menu-pg2>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/resumo">Consultar Passagem</li></a>
                    <li><a href="${pageContext.request.contextPath}/conta">Login</li></a>
                    <li><a href="${pageContext.request.contextPath}/inicio">Home</li></a>
                </ul>
            </div>
            <h1>Cadastro</h1>

            <div class="container">  
                <form action="#" class="form-contact" method="post" tabindex="1">  
                    <input type="text" class="form-contact-input" name="nome" placeholder="Nome" required />  
                    <input type="email" class="form-contact-input" name="email" placeholder="Email" required />  
                    <input type="tel" class="form-contact-input" name="tel" placeholder="Telefone" />
                    <input type="text" class="form-contact-input" name="rua" placeholder="Rua nº"/>
                    <input type="text" class="form-contact-input" name="bairo" placeholder="Bairro"/>
                    <input type="text" class="form-contact-input" name="cidade" placeholder="Cidade"/>
                    <input type="text" class="form-contact-input" name="estado" placeholder="Estado"/>

                    <button type="submit" class="form-contact-button">Cadastrar</button>  
                </form>  
            </div> 

            <p id="criar">Já possui cadastro?</p>

            <div class="container01">  
                <form action="#" class="form-contact" method="post" tabindex="1">  
                    <input type="text" class="form-contact-input" name="usuario" placeholder="Usuario" required />  
                    <input type="password" class="form-contact-input" name="senha" placeholder="Senha" required />  

                    <button type="submit" class="form-contact-button">Entrar</button>  
                </form>  
            </div> 

            <div class="botao_continuar">
                <p>
                    <a href="${pageContext.request.contextPath}/pagamento">></a>
                </p> 
            </div>
    </body>
</html>
