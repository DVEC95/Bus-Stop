class Bus

  attr_reader :route, :destination

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive
    return "This bus is for #{@destination}."
  end

  def passenger_count
    return @passengers.length
  end

  def pick_up(passenger)
    return @passengers.push(passenger)
  end

  def drop_off(passenger)
    return @passengers.delete(passenger)
  end

end
