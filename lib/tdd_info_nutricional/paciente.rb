class Paciente < Persona
	attr_accessor :datos_antro,:nombre
	
	def initialize(nombre, datos_antro=nil)
		super(nombre)
		@datos_antro=datos_antro
				
		
			
	end
	
	def clasifica_obesidad
		if !datos_antro.nil?
			imc_value=datos_antro.imc
			if imc_value >= 25.00 && imc_value <30.00	
				puts nombre.to_s +", Paciente con sobrepeso, imc ="+ imc_value.to_s
			elsif imc_value >=30.00 && imc_value <35.00
				puts nombre.to_s +", Paciente con obesidad grado 1, imc ="+imc_value.to_s
			elsif imc_value >=35.00 && imc_value <40.00
				puts nombre.to_s +", Paciente con obesidad grado 2, imc ="+imc_value.to_s
			else if imc_value >=40.00
				puts nombre.to_s +", Paciente con obesidad grado 3, imc="+imc_value.to_s
			end
		end
	end

end

end
