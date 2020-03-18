require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus.rb')
require_relative('../person.rb')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(54, "Ocean Terminal")
    @person = Person.new("David", "25")
  end

  def test_get_route
    assert_equal(54, @bus.route)
  end

  def test_get_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_drive
    assert_equal("This bus is for Ocean Terminal.", @bus.drive)
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

end
