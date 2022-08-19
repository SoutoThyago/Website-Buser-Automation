E('realizo a busca com origem {string} destino {string} e data de saída') do |origin,destiny|
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
    sleep 2
    buserNewTrip.selectNewTrip
end

E('informo nome {string} CPF {string} RG {string} do passageiro') do |name,cpf,rg|
    sleep 10
    buserNewTrip.clickNewPassenger
    buserNewTrip.selectAdultPassenger
    sleep 5
end

E('informo a forma de pagamento cartão numero {string} validade {string} CVV {string} nome {string} CPF {string} CEP {string}') do |number,validity,cvv,name,cpf,cep|
    sleep 10
end

E('confirmo a compra') do
    sleep 10
end

Entao('recebo a mensagem de compra finalizada') do
    sleep 15
end    