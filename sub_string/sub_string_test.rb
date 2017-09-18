require 'minitest/autorun'
require 'minitest/pride'
require_relative 'sub_string'

class SubStringTest < Minitest::Test

  def test_it_exists
    assert SubString
  end

  def test_it_rotates_car
    string_1 = 'car'
    string_2 = 'rca'
    assert_equal true, SubString.rotate(string_1, string_2)
  end

  def test_it_rotates_waterbottle
    string_1 = 'waterbottle'
    string_2 = 'terbottlewa'
    assert_equal true, SubString.rotate(string_1, string_2)
  end

  def test_it_rotates_gatorade
    string_1 = 'gatorade'
    string_2 = 'agtoraed'
    assert_equal false, SubString.rotate(string_1, string_2)
  end


end
