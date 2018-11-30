 Nodo = Struct.new(:value, :next, :prev)
    
   class Dll
      include Comparable, Enumerable
      attr_reader :head,:tail,:size
      def initialize()
   
          @head=Nodo.new
          @head.value=nil
          @head.next=nil
          @head.prev=nil
          @tail=@head
          @size=0
     end
  
     def insertar_head(data)
          if @head.value == nil then
                  @head.valor=data
                  @tail=@cabeza
                  @size+=1
          else
                  aux=Nodo.new
                  aux.valor=data
                  aux.prev=nil
                  aux.next=@head
                  @head.prev=aux
                  @head=aux
                  @size+=1
          end
     end
  
  
  end
