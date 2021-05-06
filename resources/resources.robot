*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}        http://automationpractice.com
${BROWSER}    chrome


*** Keywords ***
Abrir Navegador
    Open Browser    about:blank     ${BROWSER}

Fechar Navegador
    Close Browser

Dado que estou na página home do site
    Go To                   ${URL}
    Title Should Be         My Store

Quando eu pesquisar pelo produto "${PRODUTO}"
    Input Text          id=search_query_top         ${PRODUTO}   
    Click Button        name=submit_search

Então o produto "${PRODUTO}" deve ser listado na página de busca
    Wait Until Element Is Visible    css=#center_column > h1
    Title Should Be                  Search - My Store
    Page Should Contain Image        xpath=//*[@id="center_column"]//*[@src='${URL}/img/p/7/7-home_default.jpg']
    Page Should Contain Link         xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"${PRODUTO}")]

Então a página deve exibir a mensagem "${MENSSAGEM}"
    Wait Until Element Is Visible    xpath=//*[@id="center_column"]/p[@class='alert alert-warning']
    Element Text Should Be           xpath=//*[@id="center_column"]/p[@class='alert alert-warning']    ${MENSSAGEM}

Quando passo o mouse por cima da categoria "Women" no menu principal superior de categorias 
    Click Link                     href=http://automationpractice.com/index.php?id_category=3&amp