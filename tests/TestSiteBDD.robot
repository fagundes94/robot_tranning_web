***Settings***
Resource        ../resources/resources.robot
Test Setup      Abrir Navegador
Test Teardown   Fechar Navegador


***Test Cases***
# Cenário 01: Pesquisar produtos existentes
#     Dado que estou na página home do site
#     Quando eu pesquisar pelo produto "Blouse"
#     Então o produto "Blouse" deve ser listado na página de busca
    
# Cenário 02: Pesquisar produto não existente
#     Dado que estou na página home do site
#     Quando eu pesquisar pelo produto "itemNãoExistente"
#     Então a página deve exibir a mensagem "No results were found for your search "itemNãoExistente""

Cenário 03: Listar Produtos
    Dado que estou na página home do site
    Quando passo o mouse por cima da categoria "Women" no menu principal superior de categorias
    
