Dado('que acesso a página de cadastro') do
    visit "http://parodify.qaninja.com.br/"
    sleep 5 #temporario
end
  
Quando('submeto o meu cadastro com:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('devo ser redirecionado para a área logada') do
    pending # Write code here that turns the phrase above into concrete actions
end