Given('estoy en la pagina de menu') do
  visit '/menu'
end




When('seleccione {string}') do |string|
  select(string,:from => "size")
end