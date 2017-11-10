Dado("que eu esteja na pagina do site") do
  @homepage.load
end

Quando("eu seleciono a {string}") do |estado|
  @homepage.escolhe_estado(estado)
end

Quando("digito no campo {string}") do |pesquisa|
  @pesquisapage.propaganda
  @pesquisapage.preencher_campo_pesquisa(pesquisa)
end

Quando("clico em pesquisar") do
  @pesquisapage.btn_pesquisar.click
end

Então("eu verifico quais são os cinco primeiros resultados da pesquisa") do
sleep 2 # Não foi a melhor pratica, mas se fez necessario.
  @pesquisapage.mostra_titulo_e_preco
end


#Cenário: Verificar o resultado de uma pesquisa na segunda pagina
Quando("escolho um estado") do
	estado = 'sao paulo'
  @homepage.escolhe_estado(estado)
end

Quando("preencho o campo pesquisa") do
	pesquisa = 'tablet'
  @pesquisapage.preencher_campo_pesquisa(pesquisa)
end

Quando("clico no botão pesquisar") do
  @pesquisapage.btn_pesquisar.click
end

Quando("clico em avançar para outra pagina") do
  sleep 2 # Não foi a melhor pratica, mas se fez necessario.
  @pesquisapage.avancar_pagina
end

Então("tiro um print do PRIMEIRO anuncio da segunda pagina") do
  @pesquisapage.wait_for_titulo_anuncio
  screenshot_and_save_page
  p "Screenshot salvo na pasta raiz deste projeto"
end