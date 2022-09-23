class Item

    def self.valid_date?(date_string)
        date = date_string.split("-")
        return false if date[1].to_i > 12 || date[1].to_i < 1
        return false if !(date[1].to_i).is_a?(Integer)
        return false if date[2].to_i > 31 || date[2].to_i < 1
        return false if !(date[2].to_i).is_a?(Integer)
        return false if date[0].length != 4 || date[1].length != 2 || date[2].length != 2
        true
    end

    def initialize(title, deadline, description)
        @title = title
        if !Item.valid_date?(deadline)
            raise ArgumentError.new "Invalid Date"
        else @deadline = deadline
        end
        @description = description
    end

    attr_accessor :title, :description

    attr_reader :deadline

    def deadline=(new_deadline)
        if Item.valid_date?(new_deadline)
            @deadline = new_deadline 
        else
            raise ArgumentError.new "Invalid Date"
        end
    end

end
