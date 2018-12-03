class Paciente < Persona
	attr_accessor :datos_antro
	
	def initialize(datos_antro=nil,cadera,cintura,tricipital)
		super(nombre)
		@tricipital,@bicipital,@subescapular,@suprailiaco,@brazo=peso,talla,cintura,cadera,tricipital,bicipital,subescapular,suprailiaco,brazo
	end

end
