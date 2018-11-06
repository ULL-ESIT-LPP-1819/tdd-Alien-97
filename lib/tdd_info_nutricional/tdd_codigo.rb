#codigo valoracion nutricional

class Tdd_valor_nutricional #attr_reader solo se declaran variables de instancia
	attr_reader:g_saturadas,:azucares

	def initialize(g_saturadas, azucares)
		@g_saturadas=g_saturadas
		@azucares=azucares
	end
end

