require 'sinatra'
require './lib/MoveCar.rb'

get '/' do
    erb :bienvenida
end

post '/menu' do
    erb :menu
end

post '/datosIniciales' do
    erb :datosIniciales
end

post '/ventanaComandos' do
    $posicionInicial = params[:posicionInicial]
    $orientacionInicial = params[:orientacion]
    erb :ventanaComandos
end


post '/resultado' do
    comandos = params[:comandos]
    @resultado = calcularCamino($posicionInicial, $orientacionInicial, comandos)
    erb :resultado
end
