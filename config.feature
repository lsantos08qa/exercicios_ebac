            #language: pt

            Funcionalidade: Tela de Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a EBAC-SHOP e selecione um produto

            Cenário: Configuração Válida
            Quando eu preencher todoas as configurações obrigatórios
            E clicar em comprar
            Então o sistema deve inserir meus itens no carrinho

            Esquema do Cenário: Configuração Inválida
            Quando não preencher um dos campos obrigatórios <cor>, <tamanho> e <quantidade>
            Então o sistema deve exebir a <mensagem> de alerta

            Exemplos:
            | Item              | Cor       | Tamanho | Quantidade | Mensagem                    |
            | "Pullover Jacket" | "Azul"    | "M"     |            | "Preencha todos os campos!" |
            | "T-Shirt"         |           | "L"     | "5"        | "Preencha todos os campos!" |
            | "Blusa"           | "Amarelo" |         | "1"        | "Preencha todos os campos!" |
            | "Calça"           | "Preta"   | "S"     | "12"       | "Limite de itens atingido!" |


            Cenário: Botão "limpar" reinicia as seleções
            Quando eu selecionar meus itens
            E clicar no botão de "limpar carrinho"
            Então o sistema deve remover os itens escolhidos do carrinho

            Cenário: Botão "limpar" não reinicia as seleções
            Quando eu não tiver selecionado nenhum item
            E clique no botão de "limpar carrinho"
            Então o sistema deve exibir a mensagem "Não existem itens selecionados!



