            #language: pt

            Funcionalidade: Tela de Login
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do EBAC-SHOP

            Cenário: Autenticação Válida
            Quando eu digitar o usuário "lucas@gmail.com"
            E a senha "teste0123"
            Então eu devo ser direcionado para a tela de checkout

            Esquema do Cenário: Autenticação inválida
            Quando eu inserir <usuario> e <senha>
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | usuário                      | senha      | mensagem                     |
            | "douglasxp@outlook.com"      | "senha123" | "Usuário ou senha Inválidos" |
            | "gisele_faria@icloud.com.br" | "faria000" | "Usuário Inexistente"        |
