require 'sinatra'
require './lib/camino.rb'

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


