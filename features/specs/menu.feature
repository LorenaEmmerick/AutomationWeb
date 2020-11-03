#language:pt

Funcionalidade: ST3: Exibir as categorias de produtos no menu da página inicial
    Devem ser exibidos os menus: Woman, Dress e T-shirts;
    Menu Woman, devem ser exibidos os submenus Tops, com as categorias T-shirts e Blouses, e Dresses, com as categorias Casual Dresses, Evening Dresses e Summer Dresses;
    Menu Dresses devem ser exibidas as categorias CASUAL DRESSES EVENING DRESSES SUMMER DRESSES;
    Menus devem ser clicáveis e ao acessá-los os produtos da categoria devem ser exibidos.

@ST3C1a
  Cenário: Acessar os menus principais
    Dado que os os menus desejados são:
    |menuPrincipal|
    |Women        |
    E estou na página dos produtos
    Quando acesso os menus principais
    Então posso visualizar os produtos dos menus principais

@ST3C1b
  Cenário: Acessar os menus principais
    Dado que os os menus desejados são:
    |menuPrincipal|
    |Dresses      |
    E estou na página dos produtos
    Quando acesso os menus principais
    Então posso visualizar os produtos dos menus principais

@ST3C1c
  Cenário: Acessar os menus principais
    Dado que os os menus desejados são:
    |menuPrincipal|
    |T-shirts     |
    E estou na página dos produtos
    Quando acesso os menus principais
    Então posso visualizar os produtos dos menus principais

@ST3C2a
  Cenário: Acessar os submenus
    Dado que os os menus desejados são:
      |menuPrincipal|subMenu         |
      |Women        |Top             |
    E estou na página dos produtos
    Quando acesso os menus principais e submenus
    Então posso visualizar os produtos do submenu acessado

@ST3C2b
  Cenário: Acessar os submenus
    Dado que os os menus desejados são:
      |menuPrincipal|subMenu         |
      |Women        |Dresses         |
    E estou na página dos produtos
    Quando acesso os menus principais e submenus
    Então posso visualizar os produtos do submenu acessado

@ST3C2c
  Cenário: Acessar os submenus
    Dado que os os menus desejados são:
      |menuPrincipal|subMenu         |
      |Dresses      |Casual Dresses  |
    E estou na página dos produtos
    Quando acesso os menus principais e submenus
    Então posso visualizar os produtos do submenu acessado

@ST3C2d
  Cenário: Acessar os submenus
    Dado que os os menus desejados são:
      |menuPrincipal|subMenu         |
      |Dresses      |Evening Dresses |
    E estou na página dos produtos
    Quando acesso os menus principais e submenus
    Então posso visualizar os produtos do submenu acessado

@ST3C2e
  Cenário: Acessar os submenus
    Dado que os os menus desejados são:
      |menuPrincipal|subMenu         |
      |Dresses      |Summer Dresses  |
    E estou na página dos produtos
    Quando acesso os menus principais e submenus
    Então posso visualizar os produtos do submenu acessado

@ST3C3a
  Cenário: Acessar as categorias
    Dado que os os menus desejados são:
      |menuPrincipal|subMenu         |categoria       |
      |Women        |Top             |T-shirts        | 
    E estou na página dos produtos
    Quando acesso os menus principais, submenus e categorias
    Então posso visualizar os produtos da categoria acessada

@ST3C3b
  Cenário: Acessar as categorias
    Dado que os os menus desejados são:
      |menuPrincipal|subMenu         |categoria       |
      |Women        |Top             |Blouses         | 
    E estou na página dos produtos
    Quando acesso os menus principais, submenus e categorias
    Então posso visualizar os produtos da categoria acessada

@ST3C3c
  Cenário: Acessar as categorias
    Dado que os os menus desejados são:
      |menuPrincipal|subMenu         |categoria       |
      |Women        |Dresses         |Casual Dresses  |
    E estou na página dos produtos
    Quando acesso os menus principais, submenus e categorias
    Então posso visualizar os produtos da categoria acessada

@ST3C3d
  Cenário: Acessar as categorias
    Dado que os os menus desejados são:
      |menuPrincipal|subMenu         |categoria       |
      |Women        |Dresses         |Evening Dresses |
    E estou na página dos produtos
    Quando acesso os menus principais, submenus e categorias
    Então posso visualizar os produtos da categoria acessada

@ST3C3e
  Cenário: Acessar as categorias
    Dado que os os menus desejados são:
      |menuPrincipal|subMenu         |categoria       |
      |Women        |Dresses         |Summer Dresses  |
    E estou na página dos produtos
    Quando acesso os menus principais, submenus e categorias
    Então posso visualizar os produtos da categoria acessada