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
    if $cars.to_i == 1
        $inicial = params[:posicionInicial]
        @posicionInicial = getInitialPosition($inicial)
        $orientacionInicial = params[:orientacion]
        erb :ventanaComandos
    else
        $inicial = params[:posicionInicial]
        $inicial2 = params[:posicionInicial2]
        @posicionInicial = getInitialPosition($inicial)
        @posicionInicial2 = getInitialPosition($inicial2)
        $orientacionInicial = params[:orientacion]
        $orientacionInicial2 = params[:orientacion2]
        erb :ventanaComandos
    end
end


post '/resultado' do
    if $cars.to_i == 1
        comandos = params[:comandos]
        @resultado = calcularCamino($inicial, $orientacionInicial, comandos)
        erb :resultado
    else
        comandos = params[:comandos]
        comandos2 = params[:comandos2]
        @resultado = calcularCamino($inicial, $orientacionInicial, comandos)
        @resultado2 = calcularCamino($inicial2, $orientacionInicial2, comandos2)
        erb :resultado
    end

end
