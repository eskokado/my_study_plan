module MyGem
  module Algorithms
    module Searching
      class BinarySearch
        def self.binarySearch(array, search, low, high)
          if low && high
            if low > high
              return -1
            end

            mid = ((low + high) / 2).to_i

            if search == array[mid]
              return mid
            end

            if search > array[mid]
              return array[mid]
            else
              return binarySearch(array, search, low, mid - 1)
            end
          else
            array.sort
            array.each_with_index do |value, index|
              if value == search
                return index
              end
            end
            return -1
          end
          return -1
        end
      end
    end
  end
end

