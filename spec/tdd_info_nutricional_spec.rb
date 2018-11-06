RSpec.describe TddInfoNutricional do
  it "has a version number" do
    expect(TddInfoNutricional::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end


#no puede haber mas de un RSpec en describe's anidados, puedes tener varios describe's mientras sean independientes
RSpec.describe Tdd_valor_nutricional do
  before:each do
    @producto1=Tdd_valor_nutricional.new("50 g","10 g", "5 g")
  end


      
  #el it va dentro de otro describe, y ahi es donde te salta el error
  describe "le estoy pasando cantidad de grasa " do   
    it "le paso un atributo que no tiene y falla"do
	   expect(@producto1.g_saturadas).to eq("50 g")
    end

  describe "Segunda prueba: le paso un segundo parametro "
    it "le paso parametro" do
	   
	   expect(@producto1.azucares).to eq("10 g")
    end
  describe "tercer atributo "
    it "le paso un tercer atributo, las proteinas" do
	   expect(@producto1.proteinas).to eq("5 g")
    end
  end
end
