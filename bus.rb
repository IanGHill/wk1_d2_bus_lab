class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = [ ]
  end

  def drive()
    return "Brum brum!"
  end

  def number_of_passengers()
    return @passengers.length
  end

  def add_passenger(passenger)
    @passengers.push(passenger)
  end

  def drop_off_passenger(passenger)
    @passengers.delete(passenger)
  end

  def remove_all_passengers()
    @passengers.clear()
  end

  def pick_from_stop(bus_stop)
    bus_stop.queue.each {|person| add_passenger(person)}
    bus_stop.clear_the_queue

  end
end
