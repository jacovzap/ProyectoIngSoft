require 'sinatra'
require './lib/MoveCar.rb'

get '/' do
    erb :bienvenida
end

post '/menu' do
    erb :menu
end

post '/datosIniciales' do
    $size = params[:size]
    $cars = params[:cars]
    erb :datosIniciales
end

post '/ventanaComandos' do
    $inicial = params[:posicionInicial]
    @posicionInicial = getInitialPosition($inicial)
    $orientacionInicial = params[:orientacion]
    erb :ventanaComandos
end


post '/resultado' do
    comandos = params[:comandos]
    @resultado = calcularCamino($inicial, $orientacionInicial, comandos)
    erb :resultado
end
