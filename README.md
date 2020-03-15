# Desafio QA Neon
Desafio para processo seletivo do cargo de QA Analyst da Neon Pagamentos.
 

## Automação de Testes
  Para automatizar os cenários propostos no desafio, foram utilizados:
  
  ### Automação WEB
  - Ruby;
  - Selenium-Webdriver;
  - cucumber;
  - Capybara;
  - SitePrism.
  
   ### Automação API
  - Ruby;
  - Selenium-Webdriver;
  - cucumber;
  - HTTParty.
  
  . 
  ## Para a execução dos testes: 
  
  1- Instalar Ruby de acordo com o sistema operacional (exemplo utilizando o rbenv no Linux):
        
         'rbenv install 2.7.0'
      
  2- instalar o bundle: 
         
        'gem install bundler'
         
  3- Instalar as gems de cada projeto em sua pasta raiz:
          
         'bundle install'
         
  4- Para execução dos testes web necessário a instalação do chromedriver
         
         **Exemplo para Ububtu:**
         
         'wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip'
         'unzip chromedriver_linux64.zip'        
          
  5- Executar os testes com um dos seguintes comandos:
  
         'cucumber' (para todos os testes)
         'cucumber -t @exemplo' (utilizando as tags de cada cenário presentes nos arquivos .feature)
          
  6- Para rodar os testes armazenando o resultado em relatório na pasta especificada: 
  
         'cucumber --format html --out=report.html' 
