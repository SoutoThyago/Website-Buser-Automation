#language:pt
@after
@url_padrao
@execute_all

Funcionalidade: Cadastrar nova reserva

    Contexto: Acessar o site
      Dado que acesso o site buser

    Cenario: Cadastro de nova reserva
       Quando eu estiver logado com o email 'teste.automacao.2022@gmail.com' e senha 'teste2022'        
       E realizo a busca com origem 'São Miguel do Oeste' destino 'Florianópolis' e data de saída
       E escolho a primeira opção
       E informo nome 'Teste Automação' CPF '15565488001' RG '487159' do passageiro
       E informo a forma de pagamento cartão numero '5442076885453691' validade '01/24' CVV '646' nome 'Teste Automação' CPF '15565488001' CEP '89950000' validos
       E confirmo a compra
       Entao recebo a mensagem de compra finalizada