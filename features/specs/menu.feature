#language:pt

Funcionalidade: ST3: Exibir as categorias de produtos no menu da página inicial
    Devem ser exibidos os menus: Woman, Dress e T-shirts;
    Menu Woman, devem ser exibidos os submenus Tops, com as categorias T-shirts e Blouses, e Dresses, com as categorias Casual Dresses, Evening Dresses e Summer Dresses;
    Menu Dresses devem ser exibidas as categorias CASUAL DRESSES EVENING DRESSES SUMMER DRESSES;
    Menus devem ser clicáveis e ao acessá-los os produtos da categoria devem ser exibidos.

@ST3
@ST3C1
  Cenário: Acessar os menus principais
    Dado estou na página dos produtos
    E os menus principais são "WOMEN" , "DRESSES" e "T-SHIRTS"
    Quando acesso os menus principais
    Então posso visualizar os produtos dessas categorias

@ST3C2
  Cenário: Acessar os submenus
    Dado estou na página dos produtos
    E os menus desejados são:
      |menuPrincipal|subMenu         |
      |WOMEN        |TOP             |
      |WOMEN        |DRESSES         |
      |DRESSES      |CASUAL DRESSES  |
      |DRESSES      |EVENING DRESSES |
      |DRESSES      |SUMMER DRESSES  |
    Quando acesso os menus principais e submenus
    Então posso visualizar os produtos dessas categorias

@ST3C3
  Cenário: Acessar as categorias
    Dado estou na página dos produtos
    E os menus desejados são:
      |menuPrincipal|subMenu         |categoria       |
      |WOMEN        |TOP             |T-SHIRTS        | 
      |WOMEN        |TOP             |BLOUSES         |
      |WOMEN        |DRESSES         |CASUAL DRESSES  |
      |WOMEN        |DRESSES         |EVENING DRESSES |
      |WOMEN        |DRESSES         |SUMMER DRESSES  |
    Quando acesso os menus principais, submenus e categorias
    Então posso visualizar os produtos dessas categorias
