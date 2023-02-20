module MyGem
  module Algorithms
    module Greedy
      class MinimumProduct
        def self.minProd(arr)
          result = 1
          for i in 0..(arr.size - 1)
            result *= arr[i]
          end
          result
        end
      end
    end
  end
end
