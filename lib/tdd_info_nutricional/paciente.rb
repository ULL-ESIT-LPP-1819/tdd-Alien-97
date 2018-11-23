class Paciente < Persona
	attr_accessor :nombre, :apellido, :edad, :sexo,:peso, :talla
	
	def initialize(nombre,apellido,edad,sexo,peso,talla)
		super(nombre)
		@peso,@talla,@cintura,@cadera,@tricipital,@bicipital,@subescapular,@suprailiaco,@brazo=peso,talla,cintura,cadera,tricipital,bicipital,subescapular,suprailiaco,brazo
	end

end
