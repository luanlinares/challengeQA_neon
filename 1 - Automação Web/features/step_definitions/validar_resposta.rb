page = QuestionPage.new

Dado("que acesso o site da Neon") do
    page.valid_page
end 

Quando("acesso a página de perguntas") do
    page.access_questions
end
  
E ("abrir a pergunta sobre cancelamento") do
    page.open_section_cancellation
end
  
Então("devo visualizar a resposta correta para a pergunta") do
  page.validate_cancell_account_infos
end
  
Quando("acesso as informações para abertura de conta PJ") do

end
  
Então("devo visualizar a relação de documentos necessários para abertura da conta") do

end