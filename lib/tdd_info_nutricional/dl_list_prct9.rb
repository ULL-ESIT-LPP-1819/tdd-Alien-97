 Node = Struct.new(:value, :next, :prev)
    
   class Dll
      include Comparable, Enumerable
      attr_reader :head,:tail,:size
      def initialize()
   
          @head=Node.new
          @head.value=nil
          @head.next=nil
          @head.prev=nil
          @tail=@head
          @size=0
     end
  
     def insert_head(data)
          if @head.value.nil? then
                  @head.value=data
                  @tail=@head
                  @size+=1
          else
                  aux=Node.new
                  aux.value=data
                  aux.prev=nil
                  aux.next=@head
                  @head.prev=aux
                  @head=aux
                  @size+=1
          end
     end
     
     def insert_tail(data)
	  if @head.value.nil? then
		@tail.value=data
		@head=@tail
		@size+=1
	  else
		aux=Node.new
		aux.value=data
		aux.prev=@tail
		aux.next=nil
		@tail.next=aux
		@tail=aux
		@size+=1
	  end
    end
    
    def pop_head()
	if @head != @tail
	  @head=@head.next
	  @head.prev=nil
	  @size-=1
	else
	  @head.value=nil
	  @size-=1
	end

    end

    def pop_tail()
	if @tail != @head
	   @tail=@tail.prev
	   @tail.next=nil
	   @size-=1
	else
	   @tail.value=nil
	   @size-=1
	end	
  
    end
  
  
    def empty()
        @head.value.nil?
    end

	
    def to_s()
	s="" #inicializado a vacio
	aux=@head
        while !aux.next.nil?
	    s+="["+aux.value.to_s+"]"
	    aux=aux.next
	    s+="<->"
	end
	if !aux.value.nil?
	   s+="["+aux.value.to_s+"]"
	end
	s
   end
   def each
	aux=@head
	while !aux.next.nil?
	   
    	   yield aux.value
	   aux=aux.next
	end
	
	if !aux.value.nil?
	   yield aux.value
	end
   end

   def search_list(pos)
	i=0
	aux=@head

	while i <  pos do
		aux = aux.next
		i+=1
	
	end

	if(i==pos)
		return aux.value
	end
	
	  
   end
    
   def ordena
  
  
                for i in  (1..(@size-1)) do # si pones 1..(vec.size()... estás referenciando numeros enteros, no posiciones,si pones     for i in vec, ahí la i esta referenciando los valores del vector, no posiciones
                          temp=i
  
                          j=i -1
			  paciente_centinela= search_list(i)
			  paciente = search_list(j)
			  
                          result1 = paciente_centinela.gasto_energetico_total
                          result2 = paciente.gasto_energetico_total
                          while j>=0 && result1 < result2 do
				  ordenando = search_list(j+1)
                                  nueva_pos = search_list(j)
				  ordenando = nueva_pos
                                  j= j-1
				  paciente = search_list(j)
                                  result2 = paciente.gasto_energetico_total
  
                          end
			 pos_final = search_list(j+1)
                         pos_final = paciente_centinela
 
                 end
 
 
                 return vec
 
  end


   
   
end 
