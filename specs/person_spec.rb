require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person.rb')

class PersonTest < Minitest::Test

  def setup
    @person1 = Person.new("Keith", 35)
  end

  def test_get_name()
    assert_equal("Keith", @person1.name)
  end

  def test_get_age()
    assert_equal(35, @person1.age)
  end

end
