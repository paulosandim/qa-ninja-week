#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    Cenario: Login do usuário

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "paulo123@gmail.com" e "senha123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Login

        Dado que acesso a página login 
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                | senha  |
            | paulo123@hotmail.com | abc123 |
            |                      |        |
            | paulo123@gmail.com   |        |
            | paulo123@hotmail.com |        |