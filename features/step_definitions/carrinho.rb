Dado('que esteja na home') do
  @home_page = HomePage.new
  @home_page.load
  expect(@home_page).to have_title('Livelo | Programa de pontos que você troca por recompensas', exact:true)
end
  
Quando('pesquisar por {string}') do |produto|
  @home_page.buscar_produto(produto)
end

Quando('adicionar o primeiro resultado ao carrinho') do
  @home_page.add_carrinho
end

Então('devera ser adicionado com sucesso') do
  expect(@home_page.pagina_carrinho).to have_content "Kindle Paperwhite Preto com 8GB"
  expect(@home_page.pagina_carrinho).to have_content "1"
  expect(@home_page).to have_content "Resumo do pedido"
  expect(@home_page).to have_content "Seu carrinho"
end