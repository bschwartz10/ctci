# Given an image represented by an NxN matrix, where each pixel in the image is
# 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in
# place?
# [
#  [0, 1, 2],
#  [3, 4, 5],
#  [6, 7, 8]
# ]

# [
#  [6, 3, 0],
#  [7, 4, 1],
#  [8, 5, 2]
# ]

# [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
# [[6, 3, 0], [7, 4, 1], [8, 5, 2]]

# 2, 4, 6
# 0,0 --> 0,2
# 0,1 --> 1,2
# 0,2 --> 2,2

# 1,0 --> 0,1
# 1,1 --> 1,1
# 1,2 --> 2,1

# 2,0 --> 0,0
# 2,1 --> 1,0
# 2,2 --> 2,0

class Matrix

  def self.rotate(matrix)
    size = matrix.length
    layer_count = size / 2

    layer_count.times do |layer|
      last = size - layer - 1

      last.times do |element|
        offset = element - layer
        top = matrix[layer][element]
        right_side = matrix[element][last]
        bottom = matrix[last][last-offset]
        left_side = matrix[last-offset][layer]

        matrix[layer][element] = left_side
        matrix[element][last] = top
        matrix[last][last-offset] = right_side
        matrix[last-offset][layer] = bottom
      end
    end
    matrix
  end
end
