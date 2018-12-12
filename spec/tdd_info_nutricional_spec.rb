
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
    @producto1=Tdd_valor_nutricional.new(300,50 ,10 , 5 , 1 , 3)
  end


      
  #el it va dentro de otro describe, y ahi es donde te salta el error
  describe "le estoy pasando cantidad de grasa " do   
    it "le paso un atributo que no tiene(grasas saturadas) y falla"do
	   expect(@producto1.g_saturadas).to eq(300)
    end
  end

  describe "Segunda prueba: le paso un segundo parametro,cantidad de azucares " do
    it "le paso parametro" do
	   
	   expect(@producto1.azucares).to eq(50 )
    end
  end
  describe "tercer atributo "do
    it "le paso un tercer atributo, las proteinas" do
	   expect(@producto1.proteinas).to eq(10 )
    end
  end
  

  describe "cuarto atributo"do
    it "le paso un cuarto atributo, la sal" do
	   expect(@producto1.sal).to eq(5 )
    end
  end

  describe " Prueba para el metodo de calculo del valor energetico"do
    it "le paso fibra alimentaria" do
           
           expect(@producto1.fib_alimentaria).to eq(1)
    end

    it "prueba primer metodo"do
	   expect(@producto1.valor_energetico_kcal).to eq("El valor energetico en kilocalorias es 2946")
    end
  end

  describe "Prueba para el metodo de calculo del valor energetico en kilojulios"do
    it "valor_nutricional en kj"do
  	   expect(@producto1.valor_energetico_kj).to eq("El valor energetico en kilojulios es 12140")
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
RSpec.describe Tdd_valor_nutricional do #PRUEBAS PRCT9
  before:all do
	@lista= Dll.new()
	@producto1 = Tdd_valor_nutricional.new(10,8,7,6,5)
	@producto2 = Tdd_valor_nutricional.new(10,4,2,1,4)
	@producto3 = Tdd_valor_nutricional.new(10,15,3,6,1)
	@producto4 = Tdd_valor_nutricional.new(15,7,2,1,4)
	@producto5 = Tdd_valor_nutricional.new(7,6,9,8,6)
	@lista_pacientes = Dll.new()
	@lista_productos = Dll.new()
	@persona1 = Persona_datos_antro.new(97,1.80,20,22,34,"18:30","Sí","Sí",[11, 14 ,12],[26, 27, 28],[10, 7, 5],[5, 4, 2],"20","Hombre",0.27)
	@persona2 = Persona_datos_antro.new(124,1.86,33,57,88,"18:45","Sí","No",[33, 22 ,23],[26, 30, 24],[9, 7, 6],[10, 4, 6],"24","Hombre",0.12)
	@persona3 = Persona_datos_antro.new(130,1.77,20,25,36,"19:00","No","Sí",[29, 40 ,15],[30, 15, 24],[20, 10, 6],[9, 5, 2],"29","Mujer",0.0)
	@persona4 = Persona_datos_antro.new(102,1.82,20,25,36,"19:00","No","Sí",[29, 40 ,15],[30, 15, 24],[20, 10, 6],[9, 5, 2],"29","Muje    r",0.0)
	@persona5 = Persona_datos_antro.new(112,1.84,20,25,36,"19:00","No","Sí",[29, 40 ,15],[30, 15, 24],[20, 10, 6],[9, 5, 2],"29","Muje        r",0.0)
	@paciente1 = Paciente.new("Pepe",0.12,"Hombre",@persona1)
	@paciente2 = Paciente.new("Manuel",0.27,"Hombre",@persona2)
	@paciente3 = Paciente.new("Maria",0.12,"Mujer",@persona3)
	@paciente4 = Paciente.new("Lola",0.27,"Mujer",@persona4)
	@paciente5 = Paciente.new("Luisa",0.12,"Mujer",@persona5)
	@vec_dieta = [@producto1,@producto2,@producto3,@producto4,@producto5]
	@vec_pacientes = [@paciente1,@paciente2,@paciente3,@paciente4,@paciente5]
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
  #Comparaciones productos, por su cantidad de azucar
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
   
  describe "prueba enumerable de etiquetas nutricionales"do
      it"insertando producto1"do
	@lista_productos.insert_tail(@producto1)
	expect(@lista_productos.tail.value).to eq(@producto1)
      end
      it"insertando producto2"do
	@lista_productos.insert_tail(@producto2)
	expect(@lista_productos.tail.value).to eq(@producto2)
      end
      
      it"insertando producto3"do
	@lista_productos.insert_tail(@producto3)
	expect(@lista_productos.tail.value).to eq(@producto3)
      end
      it"maximo, producto con  mas cantidad de azucar"do
         expect(@lista_productos.max).to eq(@producto3)
 
       end
 
      it"minimo, producto con menos cantidad de azucar"do
        expect(@lista_productos.min).to eq(@producto2)
      end
 
      it"sort"do
        expect(@lista_productos.sort).to eq([@producto2,@producto1,@producto3])
      end
      
      it"select, productos con cantidad de azucar mayor a 5"do
	expect(@lista_productos.select{|x| x.azucares >=5}).to eq([@producto1,@producto3])
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
      #comparaciones pacientes, por su imc
      it"prueba1"do
         expect(@paciente1 > @paciente2).to eq(false)
      end
 
      it"prueba2"do
         expect(@paciente3 > @paciente1).to eq(true)
      end
   
  end  

   describe "prueba11"do
      it"lista: insertando primer paciente"do
	
	@lista_pacientes.insert_tail(@paciente1)
	expect(@lista_pacientes.tail.value).to eq(@paciente1)
      end
      it"lista: insertando segundo paciente"do
	@lista_pacientes.insert_tail(@paciente2)
	expect(@lista_pacientes.tail.value).to eq(@paciente2)
      end
      it"lista: insertando tercer paciente"do
	@lista_pacientes.insert_tail(@paciente3)
	expect(@lista_pacientes.tail.value).to eq(@paciente3)
      end
      
      
      
   end
   
   describe "prueba12: modulo Enumerable"do
      it"maximo"do
	expect(@lista_pacientes.max).to eq(@paciente3)

      end
	
      it"minimo"do
	expect(@lista_pacientes.min).to eq(@paciente1)
      end
      
      it"sort"do
	expect(@lista_pacientes.sort).to eq([@paciente1,@paciente2,@paciente3])
      end
      
      it"collect"do
	expect(@lista_pacientes.collect{|x| x.imc_value}).to eq([29.94,35.84,41.5])
      end
   end

   describe "primeras pruebas practica10"do
     it"peso teorico ideal"do
	expect(@paciente1.peso_teorico_ideal).to eq(72.50)
     end
     
     it" gasto energetico basal, Hombre"do
	expect(@paciente1.gasto_energetico_basal).to eq(2000.00)
     end

     it"gasto energetico basal, Mujer"do
	expect(@paciente3.gasto_energetico_basal).to eq(2145.25)
     end
     
     it "efecto termogeno"do
	expect(@paciente1.efecto_termogeno).to eq(200.00)
     end
	
     it "gasto de actividad fisica"do
	expect(@paciente1.gasto_actividad_fisica).to eq(240.00)
     end

     it "gasto energetico total"do
	expect(@paciente1.gasto_energetico_total).to eq(2440.00)
     end

     it "dieta" do
	acc = 0
	@vec_dieta.each{|x| acc+= x.valor_energetico_kcal}
	expect(@vec_pacientes.select{|x| x.gasto_energetico_total < acc * 1.1 && x.gasto_energetico_total >  acc * 0.9}).to eq([@paciente1,@paciente3,@paciente4])
     end
   end
	

	
end
