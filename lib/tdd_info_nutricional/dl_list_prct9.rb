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
   
end 
