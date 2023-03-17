Feature: Fazer pedido
    As a Cliente 
    I want to quero ser capaz de fazer um pedido
    So that finalizar 


    Scenario: Carrinho de compras com itens ja selecionados
        Given estou na tela do "Carrinho de Compras"
        And existe ja itens que foram selecionados pelo usuário com o campo obrigatório "Preço" com o valor "R$ __,__" 
        When seleciono a opção "Finalizar Pedido"
        Then o pedido é realizado com sucesso
        And sou redirecionado para a tela Pagamento
    Scenario: Carrinho de compras vazio
        Given estou na tela do "Carrinho de Compras"
        And não existe nenhum item selecionado o carrinho esta vazio
        When seleciono a opção "Escolher restaurante"
        Then retorno para tela de restaurantes
    Scenario: Finalizar um pedido com sucesso
        Given estou na pagina de pedidos
        And seleciono a forma de pagamento
        When escolho a opção "finalizar pedido"
        Then aparece uma mensagem de confirmação do pedido

