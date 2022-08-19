E('clico em editar perfil') do
    buserProfileChange.clickProfile
    buserProfileChange.clickEditProfile
end

E('clico em editar nome') do
    buserProfileChange.clickEditName
end

E('clico em editar email') do
    buserProfileChange.clickEditEmail
end

E('clico em editar celular') do
    buserProfileChange.clickEditPhone
end

E('atualizo o nome de usuário {string}') do |name|
    buserProfileChange.setName name
end

E('atualizo o email do usuário {string}') do |email|
    buserProfileChange.setEmail email
end

E('atualizo o celular do usuário {string}') do |phone|
    buserProfileChange.setPhone phone
end

Entao('clico em salvar nome') do
    buserProfileChange.clickSave
end

Entao('clico em salvar email') do
    buserProfileChange.clickSave
end

Entao('clico em salvar celular') do
    buserProfileChange.clickSave
end