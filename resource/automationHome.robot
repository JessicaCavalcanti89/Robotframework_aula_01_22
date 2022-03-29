***Settings***
library     SeleniumLibrary

***Variables***

${HOME_INPUT_SEARCH}        //*[@id="search_query_top"]

***Keywords***

Que Esteja no site http://automationpractice.com/index.php
    Open Browser        http://automationpractice.com/index.php     chrome

Pesquiso um produto em Search "${produto}"
    Click Element       ${HOME_INPUT_SEARCH}
    input text          ${HOME_INPUT_SEARCH}     ${produto}
    
Pesquiso o produto
    Click Element       //*[@name="submit_search"]

Site deverá trazer os produtos pesquisados
    Element Text Should Be      //*[@class="heading-counter"]       1 result has been found.



Esteja no site http://automationpractice.com/index.php
    Open Browser        http://automationpractice.com/index.php     chrome

Pesquiso o produto inexistente
    Click Element       //*[@id="search_query_top"]
    input text          //*[@id="search_query_top"]     T-SHIRTTG
    
deverá retornar a mensagem: "${mensagem}"
    Element Text Should Be      //*[@class="alert alert-warning"]      ${mensagem}


Tenha login e senha cadastrados e clique em Sign in
        #Open Browser        http://automationpractice.com/index.php     chrome
        Click Element       //*[@class="login"]

Realizar o Sign in
        Element Text Should Be      //*[@id="login_form"]/h3       ALREADY REGISTERED?
        Click Element               //*[@id="email"]
        input text                  //*[@id="email"]        teste@robot.com.br
        Click Element               //*[@id="passwd"]
        Input Password              //*[@id="passwd"]       12345
        Click Element               //*[@id="SubmitLogin"]

Sistema deverá logar com sucesso e cair na tela My account
        Element Text Should Be      //*[@class="navigation_page"]       My account
        Click Element               //*[@class="logout"]