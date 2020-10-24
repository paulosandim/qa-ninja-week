#language: pt

Funcionalidade: Cadastro de Usuários 
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

@happy
Cenario: Cadastro
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        |email|pauloedusandim@gmail.com|
        |senha|dani1991|
        |senha_confirma|dani1991|
    Então devo ser redirecionado para a área logada

Cenario: Email não informado
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem o email
    Então devo ver Oops! Informe seu email

Cenario: Senha não informada
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem a senha
    Então devo ver Oops! Informe sua senha

Cenario: Senha divergente
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro com senha divergente
    Então devo ver Opps! Senhas não são iguais

Cenario: Nenhum campo preenchido
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro sem preencher os campos
    Então devo ver Opps! Informe seu email e sua senha
