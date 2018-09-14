require 'sinatra'
require './lib/camino.rb'
require './lib/oca.rb'

get '/' do
	@@juego = Juego.new
        @imagen = OcaPos.new 0
	@mensaje = @@juego.dificultad 
	erb :oca
end


get '/mueve' do
	@posicion = @@juego.mueve 
	@mensaje = @@juego.dificultad 
        @imagen = OcaPos.new @@juego.posicion
	
	erb :oca
end


