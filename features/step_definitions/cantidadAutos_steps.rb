When("visito la pagina de menu") do
    visit'/menu'
end

Then('deberia ver la opcion de elegir cantidad de autos {string}') do |string|
    select(string,:from => "cars")
end 