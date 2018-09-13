require 'sinatra'
posicion_inicial = 0
@@posicion = posicion_inicial


get '/' do
	@@posicion = 0
    erb:oca
end

get '/mueve' do
	@@posicion+=1
	erb :oca
end
