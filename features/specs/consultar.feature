#language:pt

Funcionalidade: ST1: Consultar produtos no site
    Deve ser possível consultar os produtos cadastrados por meio de um campo de pesquisa;
    caso nenhum produto for encontrado, deve ser exibida a mensagem: No results were found for your search {TEXTO DA PESQUISA};
    Ao realizar uma pesquisa, deve ser exibido o total de resultados;
    Os resultados devem ser exibidos em formato de grid e lista;
    Deve ser exibido o total de itens e quantidade por página.
@ST1
@ST1C1
  Cenário: Consulta de produtos no site com sucesso em lista
    Dado que sou um usuário na página do site
    Quando faço a pesquisa com o item "dress"
    Então posso visualizar a quantidade total dos itens "7 results have been found." em lista 
    E a visualizar paginação "Showing 1 - 7 of 7 items"

@ST1C2
  Cenário: Consulta de produtos no site com sucesso em grid
    Dado que sou um usuário na página do site
    Quando faço a pesquisa com o item "dress"
    Então posso visualizar a quantidade total dos itens "7 results have been found." em grid
    E a visualizar paginação "Showing 1 - 7 of 7 items"

@ST1C3
  Cenário: Consulta de produtos no site sem sucesso
    Dado que sou um usuário na página do site
    Quando faço a pesquisa com o item "sapato"
    Então não posso visualizar nenhum item 
    E vejo o alerta "No results were found for your search "sapato"""

@ST1C4
  Cenário: Consulta de vários produtos no site em lista com sucesso
    
    Dado os itens para pesquisa são:
      | itens       | alerta                    |paginacao               |
      |dress        |7 results have been found. |Showing 1 - 7 of 7 items|
      |blouse       |1 result has been found.   |Showing 1 - 1 of 1 item |
    E que sou um usuário na página do site
    Quando faço a pesquisa com o item
    Então posso visualizar a quantidade total dos itens em lista 
    E a visualizar paginação