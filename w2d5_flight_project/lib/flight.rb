require_relative "passenger.rb"

class Flight


  def initialize(flight_number, capacity)   #flight number (string) and capacity (number)
    @flight_number = flight_number
    @capacity = capacity
    @passengers = []
  end

  def passengers
    @passengers
  end

  def full?
    @passengers.length == @capacity
  end

  def board_passenger(passenger)  #not ask to create a passenger insatnce by myself!!! It's a take in arg!!!
    if passenger.has_flight?(@flight_number) && !self.full?
      @passengers << passenger
    end
  end


  def list_passengers
    name = []
    @passengers.each do |passenger|
      name << passenger.name
    end

    return name
  end

  def [](index)
    return @passengers[index]
  end

  def << (passenger)
    return self.board_passenger(passenger)
  end

end
