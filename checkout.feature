            #language: pt

            Funcionalidade: Tela de Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
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
            Quando eu não preencher um dos campos obrigatórios <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
            Então deve exibir uma <mensagem> de alerta

            Exemplos:
            | Nome       | Sobrenome  | Pais     | Endereco             | Cidade                  | Cep         | Telefone       | E-mail                     | Mensagem                                |
            | "Miguel"   |            | "Brasil" | "Av Papa Joao XXIII" | "Ribeirao Pires"        | "08000-888" | "11 2222-9999" | "miguel@hotmail.com"       | "Preencha todos os campos obrigatórios" |
            | "Aline"    | "Santos"   |          | "Rua das Figueiras"  | "Santo Andre"           | "09000-000" | "11 9999-9999" | "santosaline@gmail.com"    | "Preencha todos os campos obrigatórios" |
            | "Roberto"  | "Moraes"   | "Brasil" |                      | "Diadema"               | "09880-000" | "11 7777-7777" | "roberto_moraes@yahoo.com" | "Preencha todos os campos obrigatórios" |
            | "Thayna"   | "Alves"    | "Brasil" | "Rua Quinze"         |                         | "07100-000" | "11 2222-7777" | "t.alves@gmail.com"        | "Preencha todos os campos obrigatórios" |
            | "Henrique" | "Carvalho" | "Brasil" | "Rua dos Passaro"    | "São Bernardo do Campo" | "0988-200"  | "11 8888-8888" | "henrique_c@yahoo.com"     | "Preencha todos os campos obrigatórios" |
            | "Lucas"    | "Santos"   | "Brasil" | "Av Faria Lima"      | "Diadema"               |             | "11 8888-1111" | "ls_santos@gmail.com"      | "Preencha todos os campos obrigatórios" |
            | "Bruno"    | "Borges"   | "Brasil" | "Rua Tiradentes"     | "São Bernardo do Campo" | "07788-000" |                | "b_borges@icloud.com"      | "Preencha todos os campos obrigatórios" |
            | "Mariane"  | "Seolin"   | "Brasil" | "Av Indico"          | "Santo Andre"           | "0988-000"  | "11 6666-6666" |                            | "Preencha todos os campos obrigatórios" |
            |            | "Lima"     | "Brasil" | "Rua dos Vianas"     | "Riberiao Pires"        | "0988-000"  | "11 6666-5555" |                            | "Preencha todos os campos obrigatórios" |

