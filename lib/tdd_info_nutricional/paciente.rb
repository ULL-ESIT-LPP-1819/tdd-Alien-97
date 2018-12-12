class Paciente < Persona
	attr_accessor :faf,:sexo,:datos_antro,:imc_value,:nombre #documentando, datos_antro objeto de otra clase que contiene los datos de salud del paciente
        include Comparable, Enumerable	
	def initialize(nombre,faf,sexo,datos_antro=nil,imc_value=nil) #Ruby, como en otros lenguajes, las variables por defecto las pones al final 
		super(nombre)
		@faf=faf
		@sexo=sexo
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

	def clasifica_obesidad #metodo que clasifica el la obesidad del paciente segun su imc
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
	
	def <=>(other) #metodo de comparacion de objetos, son  de gran ayuda los modulos comparable y enumerable
    		return nil unless other.instance_of? Paciente
    		@imc_value <=> other.imc_value #imc_value, sin arroba, porque accedes con el getter del objeto other
  	end

	def peso_teorico_ideal
                 pti= ( ( (( (datos_antro.estatura*100) -150) * 0.75) +50).round(2))
  
                  #puts pti.to_s
                  #return pti
                  #ten cuidado con poner puts como ultima operacion, porque devuelve nil, y si el puts es la ultima operacion, el expec va a     dar error,  porque se evalua expec(lo que quieres).to eq(nil)
  
  
          end
  
  
  
  
          def gasto_energetico_basal
		if !datos_antro.nil?
                  if(sexo=="Hombre")
                          geb_h = ( (10 * datos_antro.peso) + (6.25 * (100* datos_antro.estatura)) -(5 * datos_antro.edad) + 5)
                  elsif(sexo=="Mujer")
                          geb_m = ( (10* datos_antro.peso) + (6.25 *  (100 * datos_antro.estatura ) ) - (5 * datos_antro.edad) - 161)
                  end
		end
  
          end
  
          def efecto_termogeno
                  et = (gasto_energetico_basal() * 0.10)
          end
  
          def gasto_actividad_fisica
  
                  gaf = gasto_energetico_basal()*faf
  
          end

	  def gasto_energetico_total
                 get = gasto_energetico_basal + efecto_termogeno + gasto_actividad_fisica
          end
	  




end
      
      
      
end
