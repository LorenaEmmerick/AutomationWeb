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
        find('#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > span', text: 'Continue shopping', :visible => false)
        find('#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a[title="Proceed to checkout"]', :visible => false).click
    end

    def verificarTabela(infoProduto)
        find('table tbody tr', text: infoProduto)
    end

    def clickAdicionar
        find('#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium').click
    end

    def EncontrarBotaoContinuarComprando
        find('#center_column > p.cart_navigation.clearfix > a.button-exclusive.btn.btn-default', text: 'Continue shopping', :visible => false)
    end

    def clickExcluir
        find('.icon-trash').click
    end
end