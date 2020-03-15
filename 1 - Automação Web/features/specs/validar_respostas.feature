#language: pt

Funcionalidade: Validar respostas da página de perguntas
Eu como usuário quero verificar as respostas de algumas perguntas para obter informações da conta Neon. 

Contexto: Acessar o site da Neon
Dado que acesso o site da Neon

@q_cancel_account
Cenario: Visualizar resposta sobre cancelamento de conta
Quando acesso a página de perguntas
E abrir a pergunta sobre cancelamento
Então devo visualizar a resposta correta para a pergunta


@q_docs_pj
Cenario: Verificar documentos válidos para abertura de uma conta PJ
Quando acesso as informações para abertura de conta PJ
Então devo visualizar a relação de documentos necessários para abertura da conta    