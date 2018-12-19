
class Menu 
	include Comparable,Enumerable
	attr_reader:vec_dieta
	def initialize(vec_dieta)
		@vec_dieta=vec_dieta
	end

	def each
            yield @vec_dieta
	end
                        		
			
                    
        def menu_kcal
		
		  i=0
 
                  result=0 #siempre hay que inicializar variables
                  while  i < @vec_dieta.size()-1 do
                          result+=@vec_dieta[i].valor_energetico_kcal
                          i+=1
  
                  end
                  result.round(2)
                  return result
	end

	def <=>(other) #metodo de comparacion de objetos, son  de gran ayuda los modulos comparable y enumerable

                  return nil unless other.instance_of? Menu
		  
			
                 menu_kcal<=> other.menu_kcal #cuidado, no hagas @vec_dieta.menu_kcal, menu_kcal es un metodo de la clase y no del objeto, tienes que abstraerte un poco y pensar que este metodo hay que hacerlo asi porque el sort usa este metodo para comparar
		  
        end
end
