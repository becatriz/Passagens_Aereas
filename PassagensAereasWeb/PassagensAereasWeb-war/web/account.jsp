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
                    <li><a href="${pageContext.request.contextPath}/resumo">Consultar Passagem</a></li>
                  
                    <li><a href="${pageContext.request.contextPath}/inicio">Home</a></li>
                </ul>
            </div>
            <h1>Cadastro</h1>

            <div class="container">  
                <form class="form-contact" tabindex="1" method="POST" action="${pageContext.request.contextPath}/cadastrar">
                    <input type="text" class="form-contact-input" name="nome" placeholder="Nome completo" required />  
                    <input type="email" class="form-contact-input" name="email" placeholder="Email" required />
                    <input type="text" maxlength="11" class="form-contact-input" name="cpf" placeholder="CPF - apenas numeros" required />
                    <input type="tel" maxlength="11" class="form-contact-input" name="tel" placeholder="Telefone" required/>
                    <input type="text" class="form-contact-input" name="rua" placeholder="Rua" required/>
                    <input type="number" class="form-contact-input" name="numero" placeholder="Nº" required/>
                    <input type="text" class="form-contact-input" name="bairro" placeholder="Bairro" required/>
                    <input type="text" class="form-contact-input" name="cidade" placeholder="Cidade" required/>
                    <input type="text" class="form-contact-input" name="estado" placeholder="Estado" required/>
                    <input type="text" class="form-contact-input" name="pais" placeholder="País" required/>
                    <input type="text" class="form-contact-input" name="usuario" placeholder="Nome de usuário" required/>
                    <input type="password" class="form-contact-input" name="senha" placeholder="Senha" required/>

                    <button type="submit" name="cadastrar" class="form-contact-button">Cadastrar</button>  
                </form>  
            </div> 

            <div class="container01">  
                <form class="form-contact" tabindex="1" method="POST" action="${pageContext.request.contextPath}/entrar">
                    <input type="text" class="form-contact-input" name="usuario1" placeholder="Usuario" required />  
                    <input type="password" class="form-contact-input" name="senha1" placeholder="Senha" required />  

                    <button type="submit" name="entrar" class="form-contact-button">Entrar</button>  
                </form>  
            </div> 

            <div class="botao_continuar_vai2">
                <p>
                    <a href="${pageContext.request.contextPath}/pagamento">></a>
                </p> 
            </div>
    </body>
</html>