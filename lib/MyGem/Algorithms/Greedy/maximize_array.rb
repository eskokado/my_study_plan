module MyGem
  module Algorithms
    module Greedy
      class MaximizeArray
        def self.sum(arr, n, k)
          for i in 1..k
            min = 2147483647
            index = -1

            for j in 0..(n - 1)
              if arr[j] < min
                min = arr[j]
                index = j
              end
            end

            if (min == 0)
              break
            end

            arr[index] = -arr[index]
          end

          sum = 0
          for i in 0..(n - 1)
            sum += arr[i]
          end

          sum
        end
      end
    end
  end
end
