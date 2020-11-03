class MenuPage
    include Capybara::DSL

    def visitar
        visit "/index.php/"
    end

    def acessoMenuPrincipal(menuPrincipal)
        elemento = find("#block_top_menu > ul > li > a", text: menuPrincipal , :visible => false)
        elemento.click
    end

    def Scroll
        find('.layered_subtitle_heading', text: 'Manufacturer', :visible => false)
    end

    def verificarCategoria(menu)
        find('h1 > span[class="cat-name"]', text: menu, :visible => false)
    end

    def acessarSubMenu(subMenu)
        elemento = find(".subcategory-name", text: subMenu, :visible => false)
        elemento.click
    end


end