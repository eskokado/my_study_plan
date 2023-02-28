module MyGem
  module Algorithms
    module Greedy
      class MinSumOfProduct
        def self.handle(arrayA, arrayB)
          arrayA.sort!
          arrayB.sort!

          result = 0
          for i in 0...arrayA.length
            result += arrayA[i] * arrayB[i]
          end
          result
        end
      end
    end
  end
end
