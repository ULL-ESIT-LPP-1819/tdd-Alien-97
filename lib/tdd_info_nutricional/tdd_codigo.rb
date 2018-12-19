#codigo valoracion nutricional

class Tdd_valor_nutricional #attr_reader solo se declaran variables de instancia
	attr_reader:g_saturadas,:azucares,:proteinas,:sal, :fib_alimentaria,:g_monoinsat,:g_poliinsat,:polialcoholes,:almidon,:vitamina
	include Comparable,Enumerable
	def initialize(g_saturadas, azucares,proteinas,sal,fib_alimentaria, g_monoinsat= 5, g_poliinsat =  8, polialcoholes= 3 , almidon=1 ,  vitamina=2 )
		@g_saturadas=g_saturadas
		@azucares=azucares
		@proteinas=proteinas
		@sal=sal
		@fib_alimentaria=fib_alimentaria
		@g_monoinsat=g_monoinsat
		@g_poliinsat=g_poliinsat
		@polialcoholes=polialcoholes
		@almidon=almidon
		@vitamina=vitamina
	end
	
	def valor_energetico_kcal
		v1=[@g_saturadas,@azucares,@proteinas,@sal, @fib_alimentaria]
		v2=[9,4,2,4,6]
		i=0
		result=0 #siempre hay que inicializar variables
		while i <v1.length and i <v2.length do
			result+=(v1[i]*v2[i])
			i+=1 #asi se incrementan iteradores en ruby
		end
		result.round(2)
		return result
		#"El valor energetico en kilocalorias es #{result}"# info: operador concatenacion en Ruby es +, para que imprima varios strings
		#PUTS DEVUELVE NIL,CUIDADO

	end
	def valor_energetico_kj()
                v1=[@g_saturadas,@azucares,@proteinas,@sal, @fib_alimentaria]
                v2=[37,17,8,17,25]
                i=0
                result=0 #siempre hay que inicializar variables
                while i <v1.length and i <v2.length do
                        result+=(v1[i]*v2[i])
                        i+=1 #asi se incrementan iteradores en ruby
                end
                "El valor energetico en kilojulios es #{result}"# info: operador concatenacion en Ruby es +, para que imprima varios strings
                #PUTS DEVUELVE NIL,CUIDADO

        end

	def == (other)
       		if other.instance_of? Tdd_valor_nutricional
         		#@g_saturadas == other.g_saturadas
			@azucares==other.azucares
			#@proteinas == other.proteinas
			#@sal == other.sal
			#@fib_alimentaria == other.fib_alimentaria
			#@g_monoinsat == other.g_monoinsat
			#@g_poliinsat == other.g_poliinsat
			#@polialcoholes == other.polialcoholes
			#@almidon == other.almidon
			#@vitamina == other.vitamina
       		elsif
         		false
       		end
     	end
  
    	def <=> (other) #usando metodos modulo comparable
      		return nil unless other.instance_of?Tdd_valor_nutricional
         		@azucares <=>other.azucares
    	end

	def valor_energetico_kcal_menu(vec_menu)
		
                i=0 
                
                result=0 #siempre hay que inicializar variables
                while  i < vec_menu.size()-1 do 
			result+=vec_menu[i].valor_energetico_kcal
			i+=1
			
                end
                result.round(2)
                return result
	
	end

	 def ordena(vec)
		
		
		for i in  (1..(vec.size()-1)) do # si pones 1..(vec.size()... estás referenciando numeros enteros, no posiciones,si pones for i in vec, ahí la i esta referenciando los valores del vector, no posiciones
			temp=vec[i]
			
			j=i -1
			result1 = valor_energetico_kcal_menu(temp)
			result2 = valor_energetico_kcal_menu(vec[j])
                	while j>=0 && result1 < result2 do
				vec[j+1] = vec[j]
				j= j-1
				result2 = valor_energetico_kcal_menu(vec[j])
		
			end
			vec[j+1] = temp
			
		end
		
		
		return vec
                
         end
	

end

