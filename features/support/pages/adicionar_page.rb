class AdicionarPage
    include Capybara::DSL

    def visitar
        visit "/index.php/"
    end

    def acessarCarrinho
        find('a', text: 'Cart').click
    end
    
    def verificarAlerta(alerta)
        find('p', text: alerta)
    end

    def acessoMenuPrincipal(menuPrincipal)
        elemento = find("#block_top_menu > ul > li > a", text: menuPrincipal , :visible => false)
        elemento.click
    end

    def acessarSubMenu(subMenu)
        elemento = find(".subcategory-name", text: subMenu, :visible => false)
        elemento.click
    end

    def adicionarProduto(idProd, tamanhoProd, corProd, qtdProd)
        visit ("/index.php?id_product=#{idProd}&controller=product#/size-#{tamanhoProd}/color-#{corProd}")
        find('#quantity_wanted').set qtdProd
        click_button "Add to cart"
    end

    def verificarAlertaComprandoeCompar
        find('.continue btn btn-default button exclusive-medium', :visible => false)
        click_link "Proceed to checkout"
    end

    def verificarTabela(infoProduto)
        find('table tbody tr', text: infoProduto)
    end




end