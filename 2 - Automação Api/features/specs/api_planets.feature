#language: pt

@api_planets
Funcionalidade: Alterar o count da API planetas via get

Cenario: Validar o retorno do count da API planeta
Dado que eu tenha um valor para o count
Quando fizer alteração do valor via get
Então deve retornar o codigo de suceesso