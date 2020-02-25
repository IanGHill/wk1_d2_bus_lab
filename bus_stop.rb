class BusStop

  attr_accessor :name, :queue

  def initialize(name)
    @name = name
    @queue = [ ]
  end

  def queue_length
    @queue.length()
  end

  def add_person_to_queue(person)
    @queue.push(person)
  end


end
