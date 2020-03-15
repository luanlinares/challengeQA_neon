page = Planetget.new
  
Dado('que eu tenha um valor para o count') do
    @result = page.planets_api
    puts @qtde = @result["results"].count
end

Quando("fizer alteração do valor via get") do
    puts numm = @qtde + rand(7)
    @newresult = page.new_result
end
  
Então("deve retornar o codigo de suceesso") do
    expect(@result.code).to eq 200
    puts "O Código de retorno da requisição é: #{@result.code}"
end