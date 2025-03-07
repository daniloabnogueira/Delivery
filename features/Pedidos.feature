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
        And escolho a forma de pagamento 
        When escolho a opção "finalizar pedido"
        Then aparece uma mensagem de confirmação do pedido
     Scenario : Finalizar um pedido sem forma de pagamento
        Given estou na pagina de pedidos
        When escolho a opção " finalizar pedido"
        Then aparece uma mensagem para selecionar forma de pagamento
    Scenario: Cartão não reconhecido
        Given estou na pagina de pedidos
        And preencho dados do Cartão
        Then aparece uma mensagem cartão não reconhecido
        And confirme opção finalizar pedido fica desativada 
    Scenario: Remover item 
        Given estou na pagina de pedidos
        When escolho a opção "remover"
        Then aparece uma mensagem de confirmação de remoção
        And ao confirma a exclusão o item selecionado deve ser excluido 
     Scenario: Adicionar novo item
        Given estou na página de pedidos
        When escolho a opção ver cardápio
        Then retorno para página cardápio
        And seleciono novo item desejado
    Scenario: Remover todos os itens
        Given estou na pagina de pedidos 
        When escolho a opção remover todos
        Then aparece uma mensagem para confirma a remoção
        And ao confirmar a exlusão  retorna a tela de cardápio
    Scenario: Editar item
        Given estou na página de pedidos
        When escolho a opção editar item
        Then aparece a lista de opções de "customização" do meu item para selecão

        



