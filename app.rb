require 'sinatra'
require './lib/camino.rb'
require './lib/oca.rb'

get '/' do
	@@juego = Juego.new
end

get '/camino' do
     @@tirada = 2
     @@imagen = OcaPos.new

    erb :camino
end

get '/camino/:posicion' do
     @@tirada = params["posicion"].to_i
     @@imagen = OcaPos.new

    erb :camino
end

get '/mueve' do
	@posicion = @@juego.mueve 
	@mensaje = @@juego.dificultad 
	erb :oca
end


