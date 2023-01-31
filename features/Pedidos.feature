Feature: Fazer pedido
    As a usuário não concluiu o pedido
    I want to concluir o pedido
    So that seguir para aba Pagamento


    Scenario: Carrinho de compras com itens ja selecionados
        Given estou na tela do "Carrinho de Compras"
        And existe ja itens que foram selecionados pelo usuário com o campo obrigatório "Preço" com o valor "R$ __,__" 
        When seleciono a opção "Finalizar Pedido"
        Then o pedido é realizado com sucesso
        And sou redirecionado para a tela Pagamento
        