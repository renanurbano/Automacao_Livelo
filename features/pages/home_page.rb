class HomePage < SitePrism::Page
  set_url ''

  element :cmp_buscar, '#input-search'
  element :btn_buscar, '#span-searchIcon'
  element :btn_produto, '#CC-product-list-name-LVL189407-00'
  element :btn_carrinho, '#cc-prodDetails-addToCart'
  element :qtd_carrinho, '.cart-list__prodquantity'
  element :view_pdt_carrinho, '#CC-cart-list'

  def buscar_produto(produto)
    cmp_buscar.set produto
    btn_buscar.click
  end

  def add_carrinho
    btn_produto.click
    btn_carrinho.click
  end

  def pagina_carrinho
    qtd_carrinho.text
    view_pdt_carrinho.text
  end
end