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

end
