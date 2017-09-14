require 'minitest/autorun'
require 'minitest/pride'
require_relative 'urlify'

class UrlifyTest < Minitest::Test

  def test_it_exists
    assert Urlify
  end

  def test_it_substitutes_spaces
    input = 'Mr John Smith    '
    assert_equal 'Mr%20John%20Smith', Urlify.compute(input)
  end

end
