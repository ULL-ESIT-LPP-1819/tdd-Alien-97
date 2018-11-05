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
    @g_saturada=Tdd_valor_nutricional.new("50 g")
  end


      
  #el it va dentro de otro describe, y ahi es donde te salta el error
  describe "le paso el nombre de producto " do   
   it "le paso un atributo que no tiene y falla"do
	   expect(@g_saturada.g_saturadas).to eq("50 g")
   end
 end
end
