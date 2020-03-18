class Bus

  attr_reader :route, :destination

  def initialize(route, destination)
    @route = route
    @destination = destination
  end

  def drive
    return "This bus is for #{@destination}."
  end

end
