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
RSpec.describe Tdd_valor_nutricional do 
  before:all do
	@lista= Dll.new()
	@producto1 = Tdd_valor_nutricional.new(10,8,7,6,5)
	@producto2 = Tdd_valor_nutricional.new(10,4,2,1,4)
	
	@persona1 = Persona_datos_antro.new(97,1.80,20,22,34,"18:30","Sí","Sí",[11, 14 ,12],[26, 27, 28],[10, 7, 5],[5, 4, 2],"20")
	@persona2 = Persona_datos_antro.new(124,1.86,33,57,88,"18:45","Sí","No",[33, 22 ,23],[26, 30, 24],[9, 7, 6],[10, 4, 6],"24")
	@persona3 = Persona_datos_antro.new(130,1.77,20,25,36,"19:00","No","Sí",[29, 40 ,15],[30, 15, 24],[20, 10, 6],[9, 5, 2],"29")
	@paciente1 = Paciente.new("Pepe",@persona1)
	@paciente2 = Paciente.new("Manuel",@persona2)
	@paciente3 = Paciente.new("Maria",@persona3)
	
  end
  
  describe "prueba1"do
     it"prueba1"do
	@lista.insert_head(60)
	  expect(@lista.head.value).to eq(60)
    end
  end
  
  describe "prueba2"do
     it"prueba2"do 
	@lista.insert_tail(80)
	  expect(@lista.tail.value).to eq(80)
     end
  end
  
  describe "prueba3"do
     it"prueba3"do
	  
	  expect(@lista.empty()).to eq (false)
     end
  end
  
  describe "prueba4"do
     it"prueba4"do
	 expect(@lista.to_s()).to eq("[60]<->[80]")
     end
  end
  
  describe "prueba5"do
     it"comparando dos valoraciones nutricionales"do
	expect(@producto1 > @producto2).to eq(true)
     end
  end
  
  describe "prueba6"do
     it"comparando dos valoraciones nutricionales"do
	expect(@producto2 < @producto1).to eq(true)
     end
  end
  
  describe "prueba7"do
     it"comparando dos valoraciones nutricionales"do
	expect(@producto1==@producto2).to eq(false)
     end
  end 
  
  describe "prueba8"do
     it"imc persona"do
	expect(@persona1.imc).to eq(29.94)
     end
  end
  describe "prueba9"do
     it"to_s persona_datos_antro"do
	puts @persona1.to_s
     end
  end

  describe "prueba10"do
      it"Paciente1: Pepe"do
	  @paciente1.clasifica_obesidad
      end
      it"Paciente2: Manuel"do
	  @paciente2.clasifica_obesidad
      end
      it"Paciente3: Maria "do
	  @paciente3.clasifica_obesidad
      end
  end  

   describe "prueba11"do
      it"lista: insertando primer paciente"do
	@lista.insert_tail(@paciente1)
	expect(@lista.tail.value).to eq(@paciente1)
      end
      it"lista: insertando segundo paciente"do
	@lista.insert_tail(@paciente2)
	expect(@lista.tail.value).to eq(@paciente2)
      end
      it"lista: insertando tercer paciente"do
	@lista.insert_tail(@paciente3)
	expect(@lista.tail.value).to eq(@paciente3)
      end
   end

	
end
