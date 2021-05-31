Feature:
    Como usuario de la aplicacion
    Quiero recibir un mensaje de bienvenida 
    Para sentirme a gusto de iniciar dash and dot

Scenario:     
    When visito la pagina de bienvenida       
    Then  deberia ver el mensaje 'Bienvenido a dash and dot'      

Scenario:
    Given visito la pagina de bienvenida 
    When presiono el boton para dar inicio
    Then deberia ver la pagina de menu

Scenario:
    When presiono un boton 
    Then accedo a la pagina de juego