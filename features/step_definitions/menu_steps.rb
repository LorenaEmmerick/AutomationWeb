# ST3: Exibir as categorias de produtos no menu da página inicial

#ST3C1
Dado('que os os menus desejados são:') do |table|
    @menu_lista = table.hashes
  end

Dado('estou na página dos produtos') do
    @menu_lista.each do |menu|
        @menu_page.visitar
    end
  end

  Quando('acesso os menus principais') do
    @menu_lista.each do |menu|
        @menu_page.acessoMenuPrincipal(menu["menuPrincipal"])
    end
  end
  
  Então('posso visualizar os produtos dos menus principais') do
    @menu_lista.each do |menu|
        @menu_page.Scroll.hover
        @menu_page.verificarCategoria(menu["menuPrincipal"])
    end
  end

#ST3C2

  Quando('acesso os menus principais e submenus') do
    @menu_lista.each do |menu|
      @menu_page.acessoMenuPrincipal(menu["menuPrincipal"])
      @menu_page.acessarSubMenu(menu["subMenu"])
  end
  end

  Então('posso visualizar os produtos do submenu acessado') do
    @menu_lista.each do |menu|
      @menu_page.Scroll.hover
      @menu_page.verificarCategoria(menu["subMenu"])
  end
  end

#ST3C3
  Quando('acesso os menus principais, submenus e categorias') do
    @menu_lista.each do |menu|
      @menu_page.acessoMenuPrincipal(menu["menuPrincipal"])
      @menu_page.acessarSubMenu(menu["subMenu"])
      @menu_page.acessarSubMenu(menu["categoria"])
  end
  end

  Então('posso visualizar os produtos da categoria acessada') do
    @menu_lista.each do |menu|
      @menu_page.Scroll.hover
      @menu_page.verificarCategoria(menu["categoria"])
  end
  end