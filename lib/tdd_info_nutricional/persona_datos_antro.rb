	
class Persona_datos_antro
	attr_reader:peso, :estatura, :edad,:cintura,:cadera,:hora, :en_ropa_interior, :sin_zapatos, :brazo,:tricipital,:bicipital,:subescapular,:suprailiaco,:brazo,:sexo,:faf

	def initialize(peso,estatura,edad,cintura,cadera,hora,en_ropa_interior,sin_zapatos, tricipital,bicipital,subescapular,suprailiaco,brazo,sexo,faf)
		@peso,@estatura,@edad,@cintura,@cadera,@hora,@en_ropa_interior, @sin_zapatos,@tricipital,@bicipital,@subescapular,@suprailiaco,@brazo,@sexo,@faf=peso,estatura,edad,cintura,cadera,hora,en_ropa_interior,sin_zapatos,tricipital,bicipital,subescapular,suprailiaco,brazo,sexo,faf
	end

	def imc
		(peso/estatura**2).round(2)
	end

	def to_s
		
		s= "peso:#{@peso},estatura:#{@estatura},edad:#{@edad},cintura:#{@cintura},cadera:#{@cadera},hora:#{@hora},en_ropa_interior:#{@en_ropa_interior},sin_zapatos:#{@sin_zapatos},brazo:#{brazo}"
		 
		s+=" medidas tricipital "
		s+="["
	        tricipital.each_with_index do |element,index|
		    s+=element.to_s
		    if element!=tricipital.last
		       s+=","
		    end
		      
		end
		s+="]"
		s+=" medidas bicipital "
		s+="["
		bicipital.each_with_index do |element,index|
		     s+=element.to_s
		     if element!=bicipital.last
                       s+=","
	             end
                     
                end
                s+="]"
		s+=" medidas subescapular "
		s+="["
                subescapular.each_with_index do |element,index|
		     s+=element.to_s
		     if element!=subescapular.last
		       s+=","
		     end
		     
		end
		s+="]"
   		s+=" medidas suprailiaco "
		s+="["
		suprailiaco.each_with_index do |element,index|
		     s+=element.to_s
		     if element!=suprailiaco.last
		       s+=", "
		     end
		     
		end
		s+="]"
                
		
		
		s
		
	end
	
	def peso_teorico_ideal
		pti= ( ( (( (estatura*100) -150) * 0.75) +50).round(2))
		
		#puts pti.to_s
		#return pti
		#ten cuidado con poner puts como ultima operacion, porque devuelve nil, y si el puts es la ultima operacion, el expec va a dar error,  porque se evalua expec(lo que quieres).to eq(nil)
		
		
	end


	
	
	def gasto_energetico_basal
		if(sexo=="Hombre")
			geb_h = ( (10 * peso) + (6.25 * (100* estatura)) -(5 * edad) + 5)
		elsif(sexo=="Mujer")
			geb_m = ( (10* peso) + (6.25 *  (100 * estatura ) ) - (5 * edad) - 161)
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
