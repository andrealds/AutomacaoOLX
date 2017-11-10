#language: pt
#utf-8

Funcionalidade: Acessar o site da olx e fazer uma pesquisa
Eu como usuário
Quero acessar o site da olx
Para realizar uma pesquisa

Contexto: Acesso o site olx
Dado que eu esteja na pagina do site

@resultados @regressao
Esquema do Cenário: Fazer uma pesquisa
Quando eu seleciono a <região>
E digito no campo <pesquisa>
E clico em pesquisar
Então eu verifico quais são os cinco primeiros resultados da pesquisa

Exemplos:
|região     | pesquisa |
|"sao paulo"| "tablet" |

#Abaixo outras sugestões de regiões que voce pode pesquisar:
# roraima   |acre          |amapa
# amazonas  |minas gerais  |goias
# ms        |rio de janeiro|bahia

@pesquisa @regressao
Cenário: Verificar o resultado de uma pesquisa em outra pagina
Quando escolho um estado
E preencho o campo pesquisa
E clico no botão pesquisar
E clico em avançar para outra pagina
Então tiro um print do PRIMEIRO anuncio da segunda pagina