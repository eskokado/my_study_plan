module MyGem
  module Algorithms
    module Sorting
      class MergeSort
        def self.sort(arr)
          return arr if arr.length <= 1
          mid = arr.length / 2
          left = arr[0...mid]
          right = arr[mid...arr.length]
          merge(sort(left), sort(right))
        end

        def self.merge(left, right)
          sorted = []
          until left.empty? || right.empty?
            if left.first <= right.first
              sorted << left.shift
            else
              sorted << right.shift
            end
          end
          sorted + left + right
        end
      end
    end
  end
end
