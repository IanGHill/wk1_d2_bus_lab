require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop')

class BusStopTest < Minitest::Test

  def setup
    @bus_stop1 = BusStop.new("Elm Row")
    @person1 = Person.new("Chris", 84)
  end

  def test_get_name
    assert_equal("Elm Row", @bus_stop1.name)
  end

  def test_add_person_to_queue
    @bus_stop1.add_person_to_queue(@person1)
    assert_equal(1, @bus_stop1.queue_length)
  end


end
