E('realizo a busca com origem {string} destino {string} e data de saída') do |origin,destiny|
    @firstPage = Capybara.page.driver.browser.window_handles.first
    buserNewTrip.setOrigin origin
    buserNewTrip.selectOrigin
    buserNewTrip.setDestiny destiny
    buserNewTrip.selectDestiny
    buserNewTrip.selectDateLeave
    buserNewTrip.clickNextMonth
    buserNewTrip.selectFirstDayOfMonth
    buserNewTrip.searchTrip    
end

E('escolho a primeira opção') do
    buserNewTrip.selectNewTrip
end

E('informo nome {string} CPF {string} RG {string} do passageiro') do |name,cpf,rg|
    buserNewTrip.clickRemovePassenger    
    buserNewTrip.clickNewPassenger
    buserNewTrip.selectAdultPassenger
    buserNewTrip.setNamePassenger name
    buserNewTrip.setRGPassenger rg
    buserNewTrip.setCPFPassenger cpf
    buserNewTrip.clickAddPassenger
end

E('informo a forma de pagamento cartão numero {string} validade {string} CVV {string} nome {string} CPF {string} CEP {string} validos') do |number,validity,cvv,name,cpf,cep|    
    buserPaymentCreditCard.clickPaymentCreditCard    
    buserPaymentCreditCard.setCreditCardNumber number
    buserPaymentCreditCard.setCreditCardValidity validity
    buserPaymentCreditCard.setCreditCardCVV cvv
    buserPaymentCreditCard.setCreditCardName name
    buserPaymentCreditCard.setCreditCardCPF cpf
    buserPaymentCreditCard.setCreditCardCEP cep
    buserPaymentCreditCard.clickAddCreditCard    
end

E('confirmo a compra') do    
    buserNewTrip.clickAcceptTerms        
    windowsHelper.change_window @firstPage
end

Entao('recebo a mensagem de compra finalizada') do        
    buserNewTrip.clickFinishBuy    
end    