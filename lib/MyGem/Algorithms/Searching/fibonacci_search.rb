module MyGem
  module Algorithms
    module Searching
      class FibonacciSearch
        def self.search(array, item)
          n = array.length
          fibMMm2 = 0
          fibMMm1 = 1
          fibM = fibMMm2 + fibMMm1

          while fibM < n do
            fibMMm2 = fibMMm1
            fibMMm1 = fibM
            fibM = fibMMm2 + fibMMm1
          end

          offset = -1

          while fibM > 1 do
            i = [offset + fibMMm2, n - 1].min

            if array[i] < item
              fibM = fibMMm1
              fibMMm1 = fibMMm2
              fibMMm2 = fibM - fibMMm1
              offset = i
            elsif array[i] > item
              fibM = fibMMm2
              fibMMm1 = fibMMm1 - fibMMm2
              fibMMm2 = fibM - fibMMm1
            else
              return i
            end
          end

          if fibMMm1 and array[offset + 1] == item
            return offset + 1
          end

          return -1
        end
      end
    end
  end
end
