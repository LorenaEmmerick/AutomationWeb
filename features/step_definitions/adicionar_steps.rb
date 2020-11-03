# ST2: Utilizar o carrinho de compras para adicionar e remover produtos

#ST2C1
  Dado('que sou um usuário na página dos produtos e não seleciono nenhum produto') do
    @adicionar_page.visitar
  end
  
  Quando('acesso ao carrinho') do
        @adicionar_page.acessarCarrinho
  end
  
  Então('posso visualizar a mensagem {string}') do |alerta|
    expect(@adicionar_page.verificarAlerta(alerta)).to have_text alerta
  end

#ST2C2

Dado('os itens para compra são:') do |table|
    @adicionar_lista = table.hashes
  end
  
  Dado('que sou um usuário na página dos produtos desejados') do
    @adicionar_page.visitar
    @adicionar_lista.each do |adicionar|
        @adicionar_page.acessoMenuPrincipal(adicionar["menuPrincipal"])
        @adicionar_page.acessarSubMenu(adicionar["subMenu"])
    end
  end
  
  Quando('adiciono o produto ao carrinho validando o alerta') do
    @adicionar_lista.each do |adicionar|
        @adicionar_page.adicionarProduto(adicionar["idProduto"],
                                        adicionar["tamanho"],
                                        adicionar["cor"],
                                        adicionar["quantidade"])
        @adicionar_page.verificarAlertaComprandoeCompar
      end
  end
  
  Então('posso visualizar o produto desejado acessando o carrinho com as informações') do
    @adicionar_lista.each do |adicionar|
        @adicionar_page.verificarTabela(adicionar["produtos"])
        @adicionar_page.verificarTabela(adicionar["preco"])          
        @adicionar_page.verificarTabela(adicionar["tamanho"])            
        @adicionar_page.verificarTabela(adicionar["subTotal"])
        @adicionar_page.EncontrarBotaoContinuarComprando.hover
      end
  end

#ST2C3

  Dado('os itens para exclusão são:') do |table|
    @adicionar_lista = table.hashes
  end

  Dado('que tenho os produtos adicionados ao carrinho') do
    @adicionar_page.visitar
    @adicionar_lista.each do |adicionar|
        @adicionar_page.acessoMenuPrincipal(adicionar["menuPrincipal"])
        @adicionar_page.acessarSubMenu(adicionar["subMenu"])
        @adicionar_page.adicionarProduto(adicionar["idProduto"],
                                            adicionar["tamanho"],
                                            adicionar["cor"],
                                            adicionar["quantidade"])
        @adicionar_page.verificarAlertaComprandoeCompar
      end
  end
  
  Quando('excluo o produto do carrinho') do
    @adicionar_lista.each do |adicionar|
        @adicionar_page.clickExcluir
      end
    
  end
