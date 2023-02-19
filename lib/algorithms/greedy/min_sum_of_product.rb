module Algorithms
  module Greedy
    def self.min_sum_of_product(arrayA, arrayB)
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
