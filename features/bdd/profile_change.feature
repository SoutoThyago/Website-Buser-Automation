#language:pt
@after
@url_padrao
@test_123

Funcionalidade: Alterar de dados pessoais

    Contexto: Acessar o site
      Dado que acesso o site buser

    Cenario: Alteração do nome do usuário
       Quando eu estiver logado com o email 'teste.automacao.2022@gmail.com' e senha 'teste2022'        
       E clico em editar perfil
       E clico em editar nome
       E atualizo o nome de usuário 'Teste Automação'
       Entao clico em salvar nome

    Cenario: Alteração do email do usuário
       Quando eu estiver logado com o email 'teste.automacao.2022@gmail.com' e senha 'teste2022'        
       E clico em editar perfil
       E clico em editar email
       E atualizo o email do usuário 'teste.automacao.2022@gmail.com'
       Entao clico em salvar email

    Cenario: Alteração de celular do usuário
       Quando eu estiver logado com o email 'teste.automacao.2022@gmail.com' e senha 'teste2022'        
       E clico em editar perfil
       E clico em editar celular
       E atualizo o celular do usuário '49984164012'
       Entao clico em salvar celular