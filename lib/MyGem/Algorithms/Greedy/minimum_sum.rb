module MyGem
  module Algorithms
    module Greedy
      class MinimumSum
        def self.minSum(array, n)
          minValue = array.min
          minValue * (n - 1)
        end
      end
    end
  end
end
