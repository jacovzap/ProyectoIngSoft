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

    it "deberia devolver la orientacion introducida como texto" do
        orientacion = "O"
        resultado = calcularCamino(orientacion)
        expect(resultado).to eq("O")
    end

    it "deberia cambiar la orientacion al introducir un comando de girar" do
        posicionInicial = "1,2"
        orientacionInicial = "N"
        comandoOrientacion = "D"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoOrientacion)
        expect(resultado).to eq("E")
    end

    it "deberia avanzar una casilla en la direccion correcta al introducir el comando A" do
        posicionInicial = "1,2"
        orientacionInicial = "O"
        comandoAvance = "A"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq([2,2])
    end

    it "deberia avanzar una casilla en la direccion correcta al introducir el comando A" do
        posicionInicial = "3,3"
        orientacionInicial = "E"
        comandoAvance = "A"
        resultado = calcularCamino(posicionInicial, orientacionInicial, comandoAvance)
        expect(resultado).to eq([2,3])
    end

    
    

end
