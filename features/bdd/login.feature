#language:pt
@after
@url_padrao
@execute_all

Funcionalidade: Acesso ao site

    Contexto: Acessar o site
      Dado que acesso o site buser

    Cenario: Login no site Buser
       Quando eu estiver logado com o email 'teste.automacao.2022@gmail.com' e senha 'teste2022'        
       E clico em buscar
       Entao os filtros de busca estão disponíveis
