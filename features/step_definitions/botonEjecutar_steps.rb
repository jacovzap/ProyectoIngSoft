
When("presiono el boton de {string}") do |string|
    click_button(string)# Write code here that turns the phrase above into concrete actions
end

Then("veo la pagina con los resultados") do
    visit '/resultado'
end


