  
When("visito la pagina de bienvenida") do
    visit '/'
end
  
Then("deberia ver el mensaje {string}") do |message|
    expect(page.body).to match /#{message}/m
end

Given("visito la pagina de bienvenida") do
    visit '/bienvenida'
end

When("presiono el boton para dar inicio") do
    click_button('INICIAR')# Write code here that turns the phrase above into concrete actions
end

Then("deberia ver la pagina de menu") do
    visit '/menu'
end

