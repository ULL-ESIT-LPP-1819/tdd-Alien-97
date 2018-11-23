

Nodo = Struct.new(:valor, :next, :prev)

class Double_linked_list
   attr_reader :cabeza,:cola,:size
   def initialize()
	
       	@cabeza=Nodo.new
   	@cabeza.valor=nil
	@cabeza.next=nil
	@cabeza.prev=nil
	@cola=@cabeza
	@size=0
   end
   
   def insertar_head(dato)
	if @cabeza.valor == nil then 
        	@cabeza.valor=dato
		@cola=@cabeza
		@size+=1
	else
		aux=Nodo.new
		aux.valor=dato
		aux.prev=nil
		aux.next=@cabeza
		@cabeza.prev=aux
		@cabeza=aux
		@size+=1
	end
   end
	 	

end
