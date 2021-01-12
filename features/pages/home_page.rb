class HomePage < SitePrism::Page
  set_url ''

  element :cmp_buscar, '#input-search'
  element :btn_buscar, '#span-searchIcon'

  def buscar_produto(produto)
    cmp_buscar.set produto
    btn_buscar.click
  end
  
end