require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus.rb')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("22", "Ocean Terminal")
  end

  def test_get_route
    assert_equal("22", @bus.route)
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

end
