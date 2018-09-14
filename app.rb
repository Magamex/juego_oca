require 'sinatra'
require './lib/camino.rb'
require './lib/oca.rb'



get '/' do

	@@juego = Juego.new
	@posicion = @@juego.posicion
	@mensaje = @@juego.dificultad 
	@imagen = OcaPos.new @@juego.posicion
	erb :oca
end


get '/jugar' do

	@posicion = @@juego.mueve 
        if @posicion == -1
           erb :llegada
        else
		@mensaje = @@juego.dificultad 
		@imagen = OcaPos.new @@juego.posicion

		erb :oca
        end
end




