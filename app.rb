require 'sinatra'
require './lib/MoveCar.rb'

get '/' do
    erb :bienvenida
end

post '/inicio' do
    erb :inicio
end

post '/ventanaComandos' do
    erb :ventanaComandos
end


post '/resultado' do
    @resultado = 
    erb :resultado
end
