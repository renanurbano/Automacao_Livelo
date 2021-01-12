class PaginaCarrinho < HomePage

  element :qtd_carrinho, '.cart-list__prodquantity'
  element :view_pdt_carrinho, '#CC-cart-list'

  def carrinho
    qtd_carrinho.text
    view_pdt_carrinho.text
  end

end