class Juego
	def initialize 
		@posicion = 0
		@dado=0
		@proximo_dado = 0
	end
	def posicion
		return @posicion
	end
	def gira_dado
		@dado=rand(1..6)
		return @dado
	end

	def proximo_dado valor
		@proximo_dado = valor.to_i
	end

	def mueve 
		
		@posicion += @proximo_dado
		@proximo_dado=gira_dado
		@@tirada = @proximo_dado

		if @posicion >= 10
			return  "Llegada"
		else
			return @posicion
		end
	end


	def dificultad

		if @posicion==4
			@proximo_dado =-2
			mueve 	
			return "retrocede 2 posiciones"
		elsif @posicion==7
			@proximo_dado =-1
			mueve
			return "retrocede 1 posición"
		elsif @posicion==8
			@proximo_dado =-6
			mueve	
			return "retrocede 6 posición"
		else
			return @posicion
		end
	end
end
