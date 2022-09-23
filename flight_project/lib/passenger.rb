class Passenger

def initialize(name)
    @name = name
    @flight_numbers = []
end

attr_reader :name

def has_flight?(string)
    return true if @flight_numbers.include?(string.upcase)
    false
end

def add_flight(string)
    @flight_numbers << string.upcase if !self.has_flight?(string)
end

end