require 'minitest/autorun'
require 'minitest/pride'
require_relative 'matrix'

class MatrixTest < Minitest::Test

  def test_it_exists
    assert Matrix
  end

  def test_it_rotates_90_degrees
    matrix = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
    assert_equal [[6, 3, 0], [7, 4, 1], [8, 5, 2]], Matrix.rotate(matrix)
  end

end
