module MyGem
  module Algorithms
    module Searching
      class FindMissingNumber
        def self.search(array)
          n = array.length + 1

          expected_sum = n * (n + 1) /2

          actual_sum = array.sum

          missing_number = expected_sum - actual_sum
          missing_number
        end
      end
    end
  end
end
