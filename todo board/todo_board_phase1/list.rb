require_relative "item"

class List
   
    def initialize(label)
      @label = label
      @items = []
    end


    attr_accessor :label


    def add_item(title, deadline, description="")
      if Item.valid_date?(deadline)  
        @items << Item.new(title, deadline, description)
        true
      else
        raise "invalid date"
        false
      end
    end


    def size
     @items.length
    end


    def valid_index?(index)
      if index >= 0 && index < @items.length
        true
      else
        false
      end
    end


    def swap(index1, index2)
      if self.valid_index?(index1) && self.valid_index?(index2)
        @items[index1], @items[index2]  = @items[index2], @items[index1]
        true
      else
        false
      end
    end


      def [](index)
        if self.valid_index?(index)
          @items[index]
        else
            nil
        end
      end

      def priority
        @items[0]
      end

     def print
       puts "-------------------------" 
       puts @label.upcase
       puts "-------------------------"
       puts "Index  Item       Deadline"
       puts "-------------------------"
    #    puts  @items[0].title
     end
end