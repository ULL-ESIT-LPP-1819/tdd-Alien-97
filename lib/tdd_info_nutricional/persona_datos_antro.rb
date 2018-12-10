	
class Persona_datos_antro
	attr_reader:peso, :estatura, :edad,:cintura,:cadera,:hora, :en_ropa_interior, :sin_zapatos, :brazo,:tricipital,:bicipital,:subescapular,:suprailiaco,:brazo

	def initialize(peso,estatura,edad,cintura,cadera,hora,en_ropa_interior,sin_zapatos, tricipital,bicipital,subescapular,suprailiaco,brazo)
		@peso,@estatura,@edad,@cintura,@cadera,@hora,@en_ropa_interior, @sin_zapatos,@tricipital,@bicipital,@subescapular,@suprailiaco,@brazo=peso,estatura,edad,cintura,cadera,hora,en_ropa_interior,sin_zapatos,tricipital,bicipital,subescapular,suprailiaco,brazo
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
	
        


end
