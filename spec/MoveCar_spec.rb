require './lib/MoveCar.rb'

RSpec.describe "separar correctamente los caracteres introducidos en un string" do
    it "deberia devolver el array [1,2] al introducir el texto 1,2" do
        numero = "1,2"
        resultado = calcularCamino(numero)
        expect(resultado).to eq([1,2])
    end

    it "deberia devolver el array [3,2] al introducir el texto 3,2" do
        numero = "3,2"
        resultado = calcularCamino(numero)
        expect(resultado).to eq([3,2])
    end

    it "deberia devolver la orientacion O como texto introducida la orientacion 0" do
        orientacion = "O"
        resultado = calcularCamino(orientacion)
        expect(resultado).to eq("O")
    end

    it "deberia cambiar la orientacion N a E la introducir un comando de girar D" do
        posicionInicial = "1,2"
        orientacionInicial = "N"
        comandoOrientacion = "D"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoOrientacion)
        expect(resultado).to eq("E")
    end

    it "deberia avanzar devoler [2,2] introducida la posicion 1,2, orientacion O y comando A" do
        posicionInicial = "1,2"
        orientacionInicial = "O"
        comandoAvance = "A"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq([2,2])
    end

    it "deberia avanzar devoler [2,3] introducida la posicion 3,3 orientacion E y comando A" do
        posicionInicial = "3,3"
        orientacionInicial = "E"
        comandoAvance = "A"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq([2,3])
    end

    it "deberia devolver el array de instrucciones ['I','A','I','A','I','A','A'] al introducir como texto el comando IAIAIAA" do
        posicionInicial = "3,3"
        orientacionInicial = "E"
        comandoAvance = "IAIAIAA"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq(["I","A","I","A","I","A","A"])
    end

    it "deberia devolver [1,3] al introducir como texto el comando IAIAIAIAA, la posicion inicial 1,2 y la orientacion inicial N" do
        posicionInicial = "1,2"
        orientacionInicial = "N"
        comandoAvance = "IAIAIAIAA"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq([[1,3], "N"])
    end

    it "deberia devolver [1,1] al introducir como texto el comando AADAADADDA, la posicion inicial 3,3 y la orientacion inicial E" do
        posicionInicial = "3,3"
        orientacionInicial = "E"
        comandoAvance = "AADAADADDA"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq([[1, 1], "E"])
    end


end
