
def definirTamanioTablero(tamanio)
    return tamanio
end


def getInitialPosition(posicionInicial)
    numeros = posicionInicial.split(',')
    arrayPosicion = [numeros[0].to_i, numeros[1].to_i]
    return arrayPosicion
end



def calcularCamino(posicionInicial, orientacionInicial, comandos)

    array = Array.new(5) { Array.new(5) { 0 } }

    numeros = posicionInicial.split(',')
    arrayPosicion = [numeros[0].to_i, numeros[1].to_i]
    arrayComandos = comandos.split('')
    orientacionFinal = ""

    arrayComandos.each do |comando| 
        if orientacionInicial == "N"
            if comando == "D"
                orientacionFinal = "E"
            elsif comando == "I"
                orientacionFinal = "O"
            elsif comando == "A"
                arrayPosicion[1] = arrayPosicion[1] + 1
            end
        end
    
        if orientacionInicial == "E"
            if comando == "D"
                orientacionFinal = "S"
            elsif comando == "I"
                orientacionFinal = "N"
            elsif comando == "A"
                arrayPosicion[0] = arrayPosicion[0] - 1
            end
        end
    
        if orientacionInicial == "O"
            if comando == "D"
                orientacionFinal = "N"
            elsif comando == "I"
                orientacionFinal = "S"
            elsif comando == "A"
                arrayPosicion[0] = arrayPosicion[0] + 1
            end
        end
    
        if orientacionInicial == "S"
            if comando == "D"
                orientacionFinal = "O"
            elsif comando == "I"
                orientacionFinal = "E"
            elsif comando == "A"
                arrayPosicion[1] = arrayPosicion[1] - 1
            end
        end

        if comando != "A"
            orientacionInicial = orientacionFinal
        end
    end
    return arrayPosicion, orientacionFinal

end