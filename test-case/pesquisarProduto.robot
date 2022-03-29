**Settings***

Library             SeleniumLibrary
Resource            ../resource/automationHome.robot
Suite Setup         Que Esteja no site http://automationpractice.com/index.php
Suite Teardown      close Browser


*** Test Cases ***

Cenário 1: Pesquisar um produto existente

    #Dado 
    #Que Esteja no site http://automationpractice.com/index.php
    #E
    Pesquiso um produto em Search "T-SHIRT"
    #Quando 
    Pesquiso o produto 
    #Então 
    Site deverá trazer os produtos pesquisados

Cenário 2: Pesquisar um produto inexistente
   
    #Dado 
    #Esteja no site http://automationpractice.com/index.php
    #E
    Pesquiso um produto em Search "T-SHIRTTG"
    #quando
    Pesquiso o produto
    #Então
    deverá retornar a mensagem: "No results were found for your search "T-SHIRTTG""

Cenário 3: Pesquisar um produto em branco

    #Dado
    Pesquiso um produto em Search "" 
    #quando
    Pesquiso o produto
    #Então
    deverá retornar a mensagem: "Please enter a search keyword"


#proxima atividade criar um BDD de login

Cenário 4: Logar

    #Dado
    Tenha login e senha cadastrados e clique em Sign in
    #Quando
    Realizar o Sign in
    #Então
    Sistema deverá logar com sucesso e cair na tela My account