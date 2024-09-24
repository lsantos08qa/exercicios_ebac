            #language: pt

            Funcionalidade: Tela de Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout

            Cenário: Cadastro com todos os dados preenchidos corretamente
            Quando eu preencher todos os dados obrigatórios
            E clicar em "finalizar compra"
            Então o sistema deve processar o pedido

            Cenário: Tentativa de cadastro com e-mail inválido
            Quando eu preencher os dados obrigatórios
            E inserir um formato de e-mail inválido "rafael@mgail.com"
            Então deve exibir uma mensagem de alerta "Formato de e-mail inválido"

            Esquema do Cenário: Cadastro com campos obrigatórios vazios
            Quando eu deixar de preencher algum campo obrigatório
            Então deve exibir uma <mensagem> de alerta: "Preencha todos os campos obrigatórios"

            Exemplos:
            | Nome      | Sobrenome | Pais     | Endereco             | Cidade           | Cep         | Telefone       | E-mail                     | Mensagem                                |
            | "Miguel"  |           | "Brasil" | "Av Papa Joao XXIII" | "Ribeirao Pires" | "08000-888" | "11 2222-9999" | "miguel@hotmail.com"       | "Preencha todos os campos obrigatórios" |
            | "Roberto" | "Moraes"  | "Brasil" |                      | "Diadema"        | "09880-000" | "11 7777-7777" | "roberto_moraes@yahoo.com" | "Preencha todos os campos obrigatórios" |
