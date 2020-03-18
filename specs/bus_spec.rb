require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(10, "Silverburn")
    @person_1 = Person.new("Amy", 23)
    @person_2 = Person.new("David", 25)
    @people = [@person_1, @person_2]
    @bus_stop = BusStop.new("Glasgow Quay")
  end

  def test_get_route
    assert_equal(10, @bus.route)
  end

  def test_get_destination
    assert_equal("Silverburn", @bus.destination)
  end

  def test_drive
    assert_equal("This bus is for Silverburn.", @bus.drive)
  end

  def test_passenger_amount
    assert_equal(0, @bus.passenger_count)
  end


  def test_pick_up_and_drop_off
    @bus.pick_up(@person)
    assert_equal(1, @bus.passenger_count)
    @bus.drop_off(@person)
    assert_equal(0, @bus.passenger_count)
  end

  def test_empty_bus
    @bus.pick_up(@person)
    assert_equal(1, @bus.passenger_count)
    @bus.empty
    assert_equal(0, @bus.passenger_count)
  end

  def test_pick_up_all_from_stop
    @bus_stop.add_person_to_queue(@people)
    @bus.pick_up_all_from_stop(@bus_stop)
    @bus_stop.clear_queue
    assert_equal(2, @bus.passenger_count)
    assert_equal(0, @bus_stop.queue_length)
  end

end
