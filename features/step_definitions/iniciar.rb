Given('estoy en la pagina menu') do
  visit '/menu'
end

When('presione el boton de {string}') do |string|
  click_button(string)
end

Then('deberia ia a la pagina de datosIniciales') do
  visit '/datosIniciales'
end