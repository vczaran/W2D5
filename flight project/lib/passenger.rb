class Passenger

  def initialize(name)
    @name = name
    @flight_numbers = []
  end

  attr_reader :name
  
  def has_flight?(flight_num)
    @flight_numbers.include?(flight_num.upcase)
  end

  def add_flight(flight_num)
    unless self.has_flight?(flight_num.upcase)
     @flight_numbers << flight_num.upcase
    end
  end  

end