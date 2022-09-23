require_relative './item.rb'

class List

def initialize(label)
    @label = label
    @items = []
end

attr_accessor :label

def add_item(title, deadline, description=nil)
    description ||= ""
    if Item.valid_date?(deadline)
        @items << Item.new(title, deadline, description) 
        return true
    else
        return false
    end
end

def size
    @items.length
end

def valid_index?(index)
    
end

end

