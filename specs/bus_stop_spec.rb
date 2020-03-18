require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus_stop.rb')
require_relative('../person.rb')


class TestBusStop < Minitest::Test

  def setup
    @bus_stop = BusStop.new("Glasgow Quay")
    @person_1 = Person.new("Amy", 23)
    @person_2 = Person.new("David", 25)
    @people = [@person_1, @person_2]
  end

  def test_get_name
    assert_equal("Glasgow Quay", @bus_stop.name)
  end

  def test_queue_length
    assert_equal(0, @bus_stop.queue_length)
  end

  def test_add_person_to_queue
    @bus_stop.add_person_to_queue(@people)
    assert_equal(2, @bus_stop.queue_length)
  end

  def test_get_queue
    assert_equal([], @bus_stop.queue)
  end

  def test_clear_queue
    @bus_stop.add_person_to_queue(@people)
    assert_equal(2, @bus_stop.queue_length)
    @bus_stop.clear_queue
    assert_equal(0, @bus_stop.queue_length)
  end
  
end
