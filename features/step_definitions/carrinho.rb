Dado('que esteja na home') do
  @home_page = HomePage.new
  @home_page.load
  expect(@home_page).to have_title('Livelo | Programa de pontos que você troca por recompensas', exact:true)
end
  
Quando('pesquisar por {string}') do |produto|
  @home_page.buscar_produto(produto)
end

Quando('adicionar o primeiro resultado ao carrinho') do
  @resultado_pesquisa = ResultadoPesquisa.new
  @resultado_pesquisa.add_carrinho
end

Então('devera ser adicionado com sucesso') do
  @pagina_carrinho = PaginaCarrinho.new
  expect(@pagina_carrinho.carrinho).to have_content "Kindle Paperwhite Preto com 8GB"
  expect(@pagina_carrinho.carrinho).to have_content "1"
  expect(@pagina_carrinho).to have_content "Resumo do pedido"
  expect(@pagina_carrinho).to have_content "Seu carrinho"
end