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

  def pick_up_all_from_stop(bus_stop)
    for person in bus_stop.queue
      pick_up(person)
    end
  end

  def drop_off(passenger)
    return @passengers.delete(passenger)
  end

  def empty
    return @passengers.clear
  end

end
