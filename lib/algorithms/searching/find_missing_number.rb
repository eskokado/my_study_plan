module Algorithms
  module Searching
    def self.find_missing_number(array)
      n = array.length + 1

      expected_sum = n * (n + 1) /2

      actual_sum = array.sum

      missing_number = expected_sum - actual_sum
      missing_number
    end
  end
end
