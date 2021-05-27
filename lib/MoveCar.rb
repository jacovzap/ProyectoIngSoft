def calcularCamino(posicionInicial)
    array = Array.new(5) { Array.new(5) { 0 } }
    numeros = posicionInicial.split(',')
    array = [numeros[0].to_i, numeros[1].to_i]
    return array; 
end