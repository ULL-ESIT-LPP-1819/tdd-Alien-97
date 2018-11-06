#codigo valoracion nutricional

class Tdd_valor_nutricional #attr_reader solo se declaran variables de instancia
	attr_reader:g_saturadas,:azucares,:proteinas,:sal

	def initialize(g_saturadas, azucares,proteinas,sal)
		@g_saturadas=g_saturadas
		@azucares=azucares
		@proteinas=proteinas
		@sal=sal
	end
end

