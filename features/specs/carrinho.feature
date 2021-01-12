#language: pt
@feature-tag
Funcionalidade: Carrinho de compras

  @scenario-tag-carrinho
  Cenário: Adicionar produto ao carrinho pela busca
    Dado que esteja na home
    Quando pesquisar por "kindle"
    E adicionar o primeiro resultado ao carrinho
    Então devera ser adicionado com sucesso