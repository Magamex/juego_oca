class Juego
	def initialize 
		@posicion = 0
		@dado=0
		@proximo_dado = 0
		@dificultad = ""
	end

	def posicion
		return @posicion
	end

	def dado
		return @dado
	end

	def gira_dado
		@dado=rand(1..6)
		return @dado
	end

	def proximo_dado valor
		@proximo_dado = valor
	end

	def mueve 
		if @proximo_dado == 0
			@dado = gira_dado
		else
			@dado = @proximo_dado
		end
		@posicion += @dado

		@dificultad = ""
		if @posicion == 4
			@posicion -= 2
			@dificultad = "retrocede 2 posiciones"
		elsif @posicion == 7
			@posicion -=1
			@dificultad = "retrocede 1 posición"
		elsif @posicion == 8
			@posicion -= 6
			@dificultad = "retrocede 6 posición"
		end

		if @posicion >= 10
			return -1
		else
			return @posicion
		end
	end


	def dificultad
		return @dificultad
	end
end
