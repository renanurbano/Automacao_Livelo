class ResultadoPesquisa < HomePage

  element :btn_produto, '#CC-product-list-name-LVL189407-00'
  element :btn_carrinho, '#cc-prodDetails-addToCart'

  def add_carrinho
      btn_produto.click
      btn_carrinho.click
  end

end