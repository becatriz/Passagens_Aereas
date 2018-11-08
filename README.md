# Passagens_Aereas

## 1.2 Visão geral
	
O sistema de Viagens CG trata do gerenciamento de reservas de passagens aéreas. O sistema tem como principal objetivo reservar passagens áreas para clientes, para isso o sistema deverá ser capaz de apresentar opções de voos, assentos, mudança de classe e opções de pagamentos.

## 1.3 Requisitos funcionais
Controle e nível de acesso:

RF-1: O sistema deve exigir login.

RF-2: O sistema deve permitir ao administrador cadastrar, alterar e excluir horários de voos, linhas aéreas, preços, origem e destino de viagens. 

RF-3: O sistema deve emitir uma mensagem de erro em caso de acesso não autorizado ou falta de permissão para realizar ações.

RF-4: O sistema deve permitir que o administrador possa fazer alterações e exclusão de contas de usuário. 


### Transações principais:

RF-5: O sistema deve permitir usuários se cadastrarem no site de reservas de voos.

RF-6: O sistema deve apresentar ao usuário uma tela de cadastro com os seguintes atributos: nome completo, CPF, email, numero de celular e senha pessoal.

RF-7: O Sistema deve permitir ao usuário consultar os voos em qualquer dia, podendo efetuar a busca por aeroporto, origem ou destino.
	
RF-8: O sistema deve permitir a passageiros cadastrados a compra de passagens aéreas.

RF-9: O sistema deve exibir todos os assentos que estão disponíveis e indisponíveis  para que o usuário possa escolher. 

RF-10: O sistema deve permitir que usuário escolha tipo de classe que deseja viajar: tais como: econômica, executiva e primeira classe.

RF-11: O Sistema deve exibir na tela informações do voo, assento(s) selecionado, horário de saída e chegada, origem e destino do voo e valor.

RF-12: O sistema deve permitir aos usuários cadastrados efetuarem buscas de históricos de voos já realizados por eles.

RF-13: O sistema deve exibir na tela formas de pagamento como: Cartão de crédito, Débito ou pagamento em milhas.
	
RF-14: O sistema deve permitir que passageiros/usuários possam alterar o horário   de embarque, bem como cancelar e pedir realocação em outro voo.

RF-15: O sistema deve ser capaz de informar ao passageiro caso haja atraso no voo ou cancelamento do mesmo devido a algum motivo específico.

RF-16: O sistema deve emitir uma mensagem de erro em caso o acesso do usuário não esteja cadastrado.	

### Impressão de comprovantes e relatórios:

RF-17: O Sistema deve emitir e enviar por email e sms o comprovante da reserva, com informações do voo, assento(s) selecionado e código da passagem, horário de saída e chegada do voo, bem como origem e destino.

RF-18: O sistema deve gerar relatórios estatísticos de voos, seus horários, origem e destino.

RF-19: O sistema deve  gerar relatórios dos perfis dos passageiros, bem como sazonalidades dos voos.

RF-20: O sistema deve permitir a impressão de um relatório de voos, mostrando todos os voos em determinado dia/mes/ano, com os seguintes atributos: número de passageiros, origem, destino e horário da viagem. 
4.2 Requisitos não-funcionais
Desempenho:

RNF-1:  O sistema deve permitir múltiplos acessos simultâneos.

RNF-2 :O sistema deve salvar as informações no banco de dados imediatamente após a conclusão dos cadastros. O tempo limite deve ser de 15s. Após esse tempo o sistema informa ao usuário que não foi possível estabelecer a conexão com o banco de dados.

Confiabilidade:

RNF-3: O sistema deve ser capaz de guardar dados de uma operação que realizou em caso de falhas, para que o usuário continue depois 

Disponibilidade:

RNF-4: O sistema deve estar disponível 24hs por dia, 7 dias por semana.

Segurança:

RNF-5: O sistema deve ter proteção máxima, não deve ser possível que passageiros tenham acesso a dados de outro passageiro, como compras, dados pessoais, a única maneira de acesso a conta deve ser por login e senha.

RNF-6: Senhas necessitam ser mascarados.

RNF-7 Usuários comum não podem ter acesso a funções de administrador.

Portabilidade:
	
RNF-8 O sistema deve interagir com o computador central da companhia aérea.
 
RNF-9 O sistema deve ser capaz de armazenar dados na base de dados Postgree.

## 2 Restrições
O sistema será desenvolvido em Java EE para aplicações Web. Para isso utilizará como servidor o TomCat , já que o mesmo é específico para desenvolvimento Java. Desenvolvido no padão MVC para  injeção de dependências e persistência de dados. Por se tratar de uma aplicação Web o sistema deverá funcionar em todos os navegadores e ser igualmente responsivo.
