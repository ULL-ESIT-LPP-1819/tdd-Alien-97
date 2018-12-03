	
class Persona_datos_antro
	attr_reader:peso, :estatura, :edad,:cintura,:cadera,:hora, :en_ropa_interior, :sin_zapatos

	def initialize(peso,estatura,edad,cintura,cadera,hora,en_ropa_interior,sin_zapatos)
		@peso,@estatura,@edad,@cintura,@cadera,@hora,@en_ropa_interior, @sin_zapatos=peso,estatura,edad,cintura,cadera,hora,en_ropa_interior,sin_zapatos
	end

	def imc
		(peso/estatura**2).round(2)
	end

	def write
		 "peso:#{@peso},estatura:#{@estatura},edad:#{@edad},cintura:#{@cintura},cadera:#{@cadera},hora:#{@hora},en_ropa_interior:#{@en_ropa_interior},sin_zapatos:#{@sin_zapatos}"
	end
	
        


end
