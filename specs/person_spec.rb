require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person.rb')

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Jack", 22)
  end

  def test_get_name
    assert_equal("Jack", @person.name)
  end

  def test_get_age
    assert_equal(22, @person.age)
  end

end
