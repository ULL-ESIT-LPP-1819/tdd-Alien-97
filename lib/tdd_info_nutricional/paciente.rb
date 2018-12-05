class Paciente < Persona
	attr_accessor :datos_antro,:imc_value,:nombre
        include Comparable, Enumerable	
	def initialize(nombre,datos_antro=nil,imc_value=nil) #Ruby, como en otros lenguajes, las variables por defecto las pones al final 
		super(nombre)
		@datos_antro=datos_antro
		@imc_value=imc_value
				
		
			
	end
	
	def == (other)
                  if other.instance_of? Paciente
			@imc_value=other.imc_value
                  elsif
                          false
                  end
          end
	def clasifica_obesidad
		if !datos_antro.nil?
			@imc_value=@datos_antro.imc
			if @imc_value >= 25.00 && @imc_value <30.00	
				puts nombre.to_s() +", Paciente con sobrepeso, imc ="+ imc_value.to_s
			elsif @imc_value >=30.00 && @imc_value <35.00
				puts nombre.to_s() +", Paciente con obesidad grado 1, imc ="+imc_value.to_s
			elsif @imc_value >=35.00 && @imc_value <40.00
				puts nombre.to_s() +", Paciente con obesidad grado 2, imc ="+imc_value.to_s
			else if @imc_value >=40.00
				puts nombre.to_s() +", Paciente con obesidad grado 3, imc="+imc_value.to_s
			end
		end
	end
	
	def <=>(other)
    		return nil unless other.instance_of? Paciente
    		@imc_value <=> other.imc_value #imc_value, sin arroba, porque accedes con el getter del objeto other
  	end

end
      
      
      
end
