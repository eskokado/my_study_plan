module MyGem
  module Problems
    module Arrays
      class ArrayReversal
        attr_accessor :array
        def initialize(arr)
          @array = arr
        end
        def reverse_array(start, final)
          while start < final
            temp = @array[start]
            @array[start] = @array[final]
            @array[final] = temp
            start += 1
            final -= 1
          end
        end

        def right_rotate(d, n)
          reverse_array(0, n - 1)
          reverse_array(0, d - 1)
          reverse_array(d, n - 1)
        end

        def result_array
          result = ""
          for i in 0..(@array.size - 1)
            if i == (@array.size - 1)
              result += @array[i].to_s
            else
              result += @array[i].to_s + " "
            end
          end
          result
        end
      end
    end
  end
end
