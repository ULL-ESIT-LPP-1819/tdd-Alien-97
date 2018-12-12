	
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
	

        


end
