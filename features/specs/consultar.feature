#language:pt

Funcionalidade: ST1: Consultar produtos no site
    Deve ser possível consultar os produtos cadastrados por meio de um campo de pesquisa;
    caso nenhum produto for encontrado, deve ser exibida a mensagem: No results were found for your search {TEXTO DA PESQUISA};
    Ao realizar uma pesquisa, deve ser exibido o total de resultados;
    Os resultados devem ser exibidos em formato de grid e lista;
    Deve ser exibido o total de itens e quantidade por página.
@ST1
@ST1C1
  Cenário: Consulta de vários produtos no site em lista com sucesso
    Dado os itens para pesquisa são:
      |item                 |quantidadeItem             |paginacao               |
      |Blouse               |1 result has been found.   |Showing 1 - 1 of 1 item |
      |Printed Summer Dress |3 results have been found. |Showing 1 - 3 of 3 items|
    E que sou um usuário na página do site
    Quando faço a pesquisa com o item
    Então posso visualizar a quantidade total dos itens em lista 
    E posso visualizar a paginação

@ST1C2
  Cenário: Consulta de vários produtos no site em grid com sucesso
    Dado os itens para pesquisa são:
      |item                        |quantidadeItem             |paginacao               |
      |Printed Summer Dress        |7 results have been found. |Showing 1 - 7 of 7 items|
    E que sou um usuário na página do site
    Quando faço a pesquisa com o item
    Então posso visualizar a quantidade total dos itens em grid 
    E posso visualizar a paginação

@ST1C3
  Cenário: Consulta de vários produtos no site sem sucesso 
    Dado os itens para pesquisa são:
      |item         |quantidadeItem              |paginacao               |
      |Sapato        |7 results have been found. |Showing 1 - 7 of 7 items|
    E que sou um usuário na página do site
    Quando faço a pesquisa com o item
    Então não posso visualizar nenhum item 
    E vejo o alerta de resultados não encontrados com o nome do item "No results were found for your search {item}"