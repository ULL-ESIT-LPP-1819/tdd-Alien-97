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
  
     def insertar_head(data)
          if @head.value == nil then
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
  
  
  end
