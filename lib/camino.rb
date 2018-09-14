class OcaPos 
	def initialize posicion_actual
		@actual = posicion_actual
	end
	
	def posicion pos
            if @actual == pos
              return "oca_gif"
            else
              return "vacio"
            end
	end
end
