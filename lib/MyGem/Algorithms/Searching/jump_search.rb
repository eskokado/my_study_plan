module MyGem
  module Algorithms
    module Searching
      class JumpSearch
        def search(arr, n, item)
          i = 0
          m = Math.sqrt(n).round()
          while arr[m] <= item && m < n do
            i = m
            m += Math.sqrt(n).round()
            if m > (n - 1)
              return -1
            end
          end

          for x in i..(m-1) do
            if (arr[x] == item)
              return x
            end
          end
          return -1
        end
      end
    end
  end
end
