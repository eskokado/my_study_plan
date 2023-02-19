module Algorithms
  module Sorting
    def self.selection_sort(array)
      for i in 0...(array.length - 1)
        min_idx = i
        for j in (i + 1)...array.length
          min_idx = j if array[j] < array[min_idx]
        end
        array[i], array[min_idx] = array[min_idx], array[i] if min_idx != i
      end
      array
    end
  end
end
