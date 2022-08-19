Dado('que acesso o site buser') do
    buserLoginPage.acceptCookies    
end

Quando('eu estiver logado com o email {string} e senha {string}') do |emailLogin,senhaLogin|       
    buserLoginPage.clickEnter    
    buserLoginPage.sendEmail emailLogin
    buserLoginPage.clickContinue
    buserLoginPage.sendPassword senhaLogin    
    buserLoginPage.clickLogin
end

E('clico em buscar') do
    buserLoginPage.clickSearch
end

Entao('os filtros de busca estão disponíveis') do
    buserLoginPage.visibleElements
end