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
    @producto1=Tdd_valor_nutricional.new("50 g","10 g", "5 g", "1 g")
  end


      
  #el it va dentro de otro describe, y ahi es donde te salta el error
  describe "le estoy pasando cantidad de grasa " do   
    it "le paso un atributo que no tiene(grasas saturadas) y falla"do
	   expect(@producto1.g_saturadas).to eq("50 g")
    end
  end

  describe "Segunda prueba: le paso un segundo parametro,cantidad de azucares " do
    it "le paso parametro" do
	   
	   expect(@producto1.azucares).to eq("10 g")
    end
  end
  describe "tercer atributo "do
    it "le paso un tercer atributo, las proteinas" do
	   expect(@producto1.proteinas).to eq("5 g")
    end
  end
  

  describe "cuarto atributo"do
    it "le paso un cuarto atributo, la sal" do
	   expect(@producto1.sal).to eq("1 g")
    end
  end

  describe " Prueba para el metodo de calculo del valor energetico"do
    it "prueba primer metodo"do
	    Tdd_valor_nutricional.valor_energetico("la energia es igual mc^2").should == 300
    end
  end

end
