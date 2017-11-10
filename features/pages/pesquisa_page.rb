class PesquisaPage < SitePrism::Page

	element :campo_pesquisa, '[id="searchtext"]'
	element :btn_pesquisar, '[id="searchbutton"]'
	elements :titulo_anuncio, '[class="OLXad-list-title mb5px"]'
	elements :preco, '[class="OLXad-list-price"]'
	elements :proxima_pagina, '[class="item number"]'
	element :popup, '[id="sas_48217"]'
	element :fechar_anuncio, '[id="sas_closeButonWrapper"]'

	def propaganda
  		wait_for_popup	
  		if page.has_css?('[id="sas_48217"]') == true
    		fechar_anuncio.click
    			else
    		wait_for_campo_pesquisa
    	end
	end

	def preencher_campo_pesquisa(pesquisa)
		wait_for_campo_pesquisa
		campo_pesquisa.set(pesquisa)
	end
	def mostra_titulo_e_preco
		wait_for_titulo_anuncio
		for i in 0..4
   		puts titulo_anuncio[i].text
   		puts preco[i].text
		end
	end
	def avancar_pagina
		proxima_pagina[1].click
	end
end