#language:pt

Funcionalidade: ST2: Utilizar o carrinho de compras para adicionar e remover produtos
    Caso o carrinho esteja vazio, deve ser exibida a mensagem: “Your shopping cart is empty”;
    Ao adicionar um produto ao carrinho, o usuário deve ser questionado se deseja continuar comprando ou finalizar a compra;
    Ao acessar o carrinho, deve ser possível excluir os produtos;
    Dentro carrinho deve ser exibido o preço unitário do produto, total e a quantidade;
    Deve ser exibido o total da compra.

@ST2
@ST2C1
  Cenário: Acessar ao carrinho vazio
    Dado que sou um usuário na página dos produtos e não seleciono nenhum produto
    Quando acesso ao carrinho
    Então posso visualizar a mensagem "Your shopping cart is empty"

@ST2C2
  Cenário: Adicionar produtos ao carrinho
    Dado os itens para compra são:
      |produtos             |preco  |quantidade|tamanho |cor  |menuPrincipal|subMenu        |idProduto|subTotal|
      |Printed Summer Dress |$30.50 |1         |m       |white|Dresses      |Summer Dresses |6        |$30.50  |
    E que sou um usuário na página dos produtos desejados
    Quando adiciono o produto ao carrinho validando o alerta
    Então posso visualizar o produto desejado acessando o carrinho com as informações

@ST2C3 
# Terminar
  Cenário: Excluir produtos do carrinho
    Dado os itens para exclusão são:
      |produtos             |preco  |quantidade|tamanho |cor  |menuPrincipal|subMenu        |idProduto|subTotal|
      |Printed Summer Dress |$30.50 |1         |m       |white|Dresses      |Summer Dresses |6        |$30.50  |
    E que tenho os produtos adicionados ao carrinho
    Quando excluo o produto do carrinho
    Então posso visualizar a mensagem "Your shopping cart is empty"
