require 'minitest/autorun'
require_relative 'unique_string'

class UniqueStringTest < Minitest::Test
  def test_a_is_unique
    string = 'a'
    assert_equal true, UniqueString.compute(string)
  end

  def test_aa_is_not_unique
    string = 'aa'
    assert_equal false, UniqueString.compute(string)
  end

  def test_brett_is_not_unique
    string = 'brett'
    assert_equal false, UniqueString.compute(string)
  end

  def test_a_through_z_is_unique
    string = 'abcdefghijklmnopqrstuvwxyz'
    assert_equal true, UniqueString.compute(string)
  end
end
