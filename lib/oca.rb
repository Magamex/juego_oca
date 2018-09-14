class Juego
	def initialize 
		@posicion = 0	
	end
	def posicion
		return @posicion
	end
	def mueve dado=1

		if dado==0
		@posicion +=1
		else		
		@posicion += dado
		end

		if @posicion >= 10
			return  "Llegada"
		else
			return @posicion
		end
	end


	def dificultad_mensaje

		if @posicion==4
			mueve -2	
			return "retrocede 2 posiciones"
		elsif @posicion==7
			mueve -1	
			return "retrocede 1 posiciones"
		else
			return @posicion
		end
	end
end
