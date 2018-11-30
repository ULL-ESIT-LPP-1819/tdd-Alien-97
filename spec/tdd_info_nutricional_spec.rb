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
    @producto1=Tdd_valor_nutricional.new(50 ,10 , 5 , 1 , 3)
  end


      
  #el it va dentro de otro describe, y ahi es donde te salta el error
  describe "le estoy pasando cantidad de grasa " do   
    it "le paso un atributo que no tiene(grasas saturadas) y falla"do
	   expect(@producto1.g_saturadas).to eq(50 )
    end
  end

  describe "Segunda prueba: le paso un segundo parametro,cantidad de azucares " do
    it "le paso parametro" do
	   
	   expect(@producto1.azucares).to eq(10 )
    end
  end
  describe "tercer atributo "do
    it "le paso un tercer atributo, las proteinas" do
	   expect(@producto1.proteinas).to eq(5 )
    end
  end
  

  describe "cuarto atributo"do
    it "le paso un cuarto atributo, la sal" do
	   expect(@producto1.sal).to eq(1 )
    end
  end

  describe " Prueba para el metodo de calculo del valor energetico"do
    it "le paso fibra alimentaria" do
           
           expect(@producto1.fib_alimentaria).to eq(3)
    end

    it "prueba primer metodo"do
	   expect(@producto1.valor_energetico_kcal).to eq("El valor energetico en kilocalorias es 522")
    end
  end

  describe "Prueba para el metodo de calculo del valor energetico en kilojulios"do
    it "valor_nutricional en kj"do
  	   expect(@producto1.valor_energetico_kj).to eq("El valor energetico en kilojulios es 2152")
    end
  end
   
end

RSpec.describe Double_linked_list do
   before:each do 
	@dll_list1=Double_linked_list.new()
	    
   end
   describe "pruebas lista"do
     it " primera prueba "do
	  @dll_list1.insertar_head(50)    	 
	   expect(@dll_list1.cabeza.valor).to eq(50)
     end		
   end
  
end
RSpec.describe Dll do 
  before:each do
	@etiqueta = Dll.new()
  end
  
  describe "prueba1"do
     it"prueba1"do
	 @etiqueta.insert_head(60)
	  expect(@etiqueta.head.value).to eq (60)
     end
  end
  
  describe "prueba2"do
     it"prueba2"do 
	@etiqueta.insert_tail(80)
	  expect(@etiqueta.cola.value).to eq (80)
     end
  end
end
