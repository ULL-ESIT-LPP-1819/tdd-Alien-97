#codigo valoracion nutricional

class Tdd_valor_nutricional #attr_reader solo se declaran variables de instancia
	attr_reader:g_saturadas,:azucares,:proteinas,:sal, :fib_alimentaria,:g_monoinsat,:g_poliinsat,:polialcoholes,:almidon,:vitamina

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
	
	def valor_energetico_kcal()
		v1=[@g_saturadas,@azucares,@proteinas,@sal, @fib_alimentaria]
		v2=[9,4,2,4,6]
		i=0
		result=0 #siempre hay que inicializar variables
		while i <v1.length and i <v2.length do
			result+=(v1[i]*v2[i])
			i+=1 #asi se incrementan iteradores en ruby
		end
		"El valor energetico en kilocalorias es #{result}"# info: operador concatenacion en Ruby es +, para que imprima varios strings
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

end

