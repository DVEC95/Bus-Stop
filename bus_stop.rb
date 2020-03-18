class BusStop

  attr_reader :name

  def initialize(name)
    @name = name
    @queue = []
  end

  def queue_length
    return @queue.length
  end

  def queue
    return @queue
  end

  def clear_queue
    return @queue.clear
  end

  def add_person_to_queue(people)
    for person in people
      @queue << person
    end
  end

end
