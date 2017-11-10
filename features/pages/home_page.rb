class HomePage < SitePrism::Page
  set_url "http://www.olx.com.br/"
  element :sao_paulo, '[id="state-sp"]'
  element :roraima, '[id="state-rr"]'
  element :acre, '[id="state-ac"]'
  element :amapa, '[id="state-ap"]'
  element :amazonas, '[id="state-am"]'
  element :minas_gerais, '[id="state-mg"]'
  element :goias, '[id="state-go"]'
  element :mato_grosso_do_sul, '[id="state-ms"]'
  element :rio_de_janeiro, '[id="state-rj"]'
  element :bahia, '[id="state-ba"]'

def escolhe_estado(estado)
  wait_for_sao_paulo
        if  estado == "sao paulo"
           self.sao_paulo.click
        elsif
            estado == "roraima"
            self.roraima.click
        elsif
            estado == "acre"
            self.acre.click
        elsif
             estado == "amapa"
             self.amapa.click
        elsif
            estado == "amazonas"
             self.amazonas.click
        elsif
            estado == "minas gerais"
             self.minas_gerais.click
        elsif
            estado == "goias"
             self.goias.click
        elsif
            estado == "ms"
             self.mato_grosso_do_sul.click
        elsif
            estado == "rio de janeiro"
             self.pedir_cartao_elite.click
        elsif
            estado == "bahia"
             self.bahia.click
        end
    end
end