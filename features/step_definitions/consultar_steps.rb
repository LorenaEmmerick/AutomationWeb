# ST1: Consultar produtos no site

#ST1C1
Dado('os itens para pesquisa são:') do |table|
    @consultar_lista = table.hashes
  end
  
  Dado('que sou um usuário na página do site') do
      @consultar_page.visitar
      sleep 1
  end
  
  Quando('faço a pesquisa com o item') do
    @consultar_lista.each do |consultar|
        @consultar_page.pesquisar(consultar["item"])
        sleep 1
    end
  end
  
  Então('posso visualizar a quantidade total dos itens em lista') do
    @consultar_lista.each do |consultar|
        @consultar_page.clickLinkLista
        sleep 1
        @consultar_page.verificarNomeProdutoLista(consultar["item"])
        @consultar_page.verificarQtdProduto(consultar["quantidadeItem"])
    end
  end
  
  Então('posso visualizar a paginação') do
    @consultar_lista.each do |pesquisa|
      @consultar_page.Scroll.hover
      @consultar_page.verificarPaginacao(pesquisa["paginacao"])
    end
  end

#ST1C2

  Então('posso visualizar a quantidade total dos itens em grid') do
    @consultar_lista.each do |consultar|
      @consultar_page.clickLinkGrid
      sleep 1
      @consultar_page.verificarNomeProdutoGrid(consultar["item"])
      @consultar_page.verificarQtdProduto(consultar["quantidadeItem"])
    end
  end

#ST1C3

  Então('não posso visualizar nenhum item') do
    @consultar_lista.each do |consultar|
      @consultar_page.verificarQtdProduto(consultar["quantidadeItem"])
    end
  end
  
  Então('vejo o alerta de resultados não encontrados com o nome do item') do
    @consultar_lista.each do |consultar|
      @consultar_page.Scroll.hover
      alerta = (consultar["alerta"])
      expect(@consultar_page.verificarAlerta(alerta)).to have_text alerta
    end
  end
