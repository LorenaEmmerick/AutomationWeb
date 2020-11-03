class ConsultarPage
    include Capybara::DSL

    def visitar
        visit "/index.php/"
    end

    def pesquisar(item)
        find("#searchbox").click
        pesquisa = find("#search_query_top", :visible => false)
        pesquisa.set item

        botaopesquisa = find('button[name="submit_search"]')
        botaopesquisa.click

    end

    def clickLinkLista
        find('a[title="List"]').click
    end

    def clickLinkGrid
        find('a[title="Grid"]').click
    end
  
    def verificarNomeProdutoLista(nomeProduto)
        all('a[class="product-name"]' , text: nomeProduto)
    end

    def verificarQtdProduto(qtdProduto)
        all('div[class="product-count"]', text: qtdProduto)
    end

    def verificarNomeProdutoGrid(nomeProduto)
        all('a[class="product_img_link"]', text: nomeProduto)
    end

    def verificarPaginacao(pagProduto)
        all('div[class="product-count"]', text: pagProduto)
    end

    def verificarAlerta(alerta)
        find(:xpath, '//*[@id="center_column"]/p', text: alerta)
    end

    def Scroll
        find(:xpath,'//*[@id="best-sellers_block_right"]/div/ul/li[3]', :visible => false)
    end

end