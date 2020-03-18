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

end
