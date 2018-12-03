class Persona 

	attr_reader:nombre
	
	def initialize(nombre)
		@nombre=nombre
	end

	def nombre_to_s
		"Nombre: #{@nombre}"
	end
	
end
