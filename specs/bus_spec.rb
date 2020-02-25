require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus.rb')
require_relative('../person.rb')

class BusTest < Minitest::Test

  def setup
    @bus_22 = Bus.new("22", "Ocean Terminal")
    @passenger1 = Person.new("Juan", 22)
  end

  def test_get_route_number()
    assert_equal("22", @bus_22.route_number)
  end

  def test_get_destination()
    assert_equal("Ocean Terminal", @bus_22.destination)
  end

  def test_drive()
    assert_equal("Brum brum!", @bus_22.drive)
  end

  def test_number_of_passengers
    assert_equal(0, @bus_22.number_of_passengers)
  end

  def test_add_passenger()
    @bus_22.add_passenger(@passenger1)
    assert_equal(1, @bus_22.number_of_passengers)
  end

  def test_drop_off_passenger()
    @bus_22.add_passenger(@passenger1)
    @bus_22.drop_off_passenger(@passenger1)
    assert_equal(0, @bus_22.number_of_passengers)
  end

  def test_remove_all_passengers()
      @bus_22.add_passenger(@passenger1)
      @bus_22.add_passenger(@passenger1)
      @bus_22.add_passenger(@passenger1)
      @bus_22.add_passenger(@passenger1)
      @bus_22.remove_all_passengers()
    assert_equal(0, @bus_22.number_of_passengers)
  end


end
