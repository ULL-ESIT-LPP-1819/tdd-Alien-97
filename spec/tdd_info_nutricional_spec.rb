RSpec.describe TddInfoNutricional do
  it "has a version number" do
    expect(TddInfoNutricional::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end


#no puede haber mas de un RSpec en describe's anidados, puedes tener varios describe's mientras sean independientes
RSpec.describe TddInfoNutricional do
  before:each do
    @nombre1=TddInfoNutricional.new("Leche entera")
  end


      
  #el it va dentro de otro describe, y ahi es donde te salta el error
  describe "le paso el nombre de producto " do   
   it "le paso un atributo que no tiene y falla"do
     expect(@nombre1).to eq("Leche entera")
   end
 end
end
