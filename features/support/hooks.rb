Before do
    @homepage = HomePage.new
    @pesquisapage = PesquisaPage.new
end

After do |scenario|
    $sufix =  ('failed' if scenario.failed?) || 'passed'
    tira_screenshot(scenario.name)
end