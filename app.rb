require 'sinatra'
require './lib/oca.rb'


get '/' do
	@@juego = Juego.new
	@posicion = @@juego.posicion
    erb:oca
end

get '/mueve' do
	@posicion = @@juego.mueve 
	@mensaje = @@juego.dificultad_mensaje 
	erb :oca
end


