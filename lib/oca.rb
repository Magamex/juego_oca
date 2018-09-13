class Juego
	def initialize 
		@posicion = 0	
	end
	def posicion
		return @posicion
	end
	def mueve
		@posicion+=1
		if @posicion >= 10
			return  "Llegada"
		else
			return @posicion
		end
	end

end
