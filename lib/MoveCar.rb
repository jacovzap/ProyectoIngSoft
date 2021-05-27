def calcularCamino(posicionInicial, orientacionInicial, comando)

    array = Array.new(5) { Array.new(5) { 0 } }
    numeros = posicionInicial.split(',')
    array = [numeros[0].to_i, numeros[1].to_i]

    if orientacionInicial == "N"
        if comando == "D"
            orientacionFinal = "E"
        elsif comando == "I"
            orientacionFinal = "O"
        elsif comando == "A"
            array[1] = array[1] + 1
        end
    end

    if orientacionInicial == "E"
        if comando == "D"
            orientacionFinal = "S"
        elsif comando == "I"
            orientacionFinal = "N"
        elsif comando == "A"
            array[0] = array[0] - 1
        end
    end

    if orientacionInicial == "O"
        if comando == "D"
            orientacionFinal = "N"
        elsif comando == "I"
            orientacionFinal = "S"
        elsif comando == "A"
            array[0] = array[0] + 1
        end
    end

    if orientacionInicial == "S"
        if comando == "D"
            orientacionFinal = "O"
        elsif comando == "I"
            orientacionFinal = "E"
        elsif comando == "A"
            array[1] = array[1] - 1
        end
    end


    return array

end