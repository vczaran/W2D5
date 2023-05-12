require "flight"
require "passenger"

class Flight

  def initialize(flight_number, capacity)
    @flight_number = flight_number
    @capacity = capacity
    @passengers = []
  end

  attr_reader :passengers

  def full?
    @passengers.length == @capacity
  end

  def board_passenger(passenger)
    if (passenger.has_flight?(@flight_number)) && (!self.full?)
        @passengers << passenger
    end  
  end

  def list_passengers
    @passengers.map { |passenger| passenger.name }
  end

  def [](index)
    @passengers[index]
  end

  def <<(passenger)
    self.board_passenger(passenger)
  end
  
end