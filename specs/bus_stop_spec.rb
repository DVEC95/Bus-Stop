require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus_stop.rb')

class TestBusStop < Minitest::Test

  def setup
    @bus_stop = BusStop.new("Balamb Town")
  end

  def test_get_name
    assert_equal("Balamb Town", @bus_stop.name)
  end

end
