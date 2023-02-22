module MyGem
  module Algorithms
    module Sorting
      class QuickSort
        def self.sort(array)
          return array if array.length <= 1

          pivot = array.first
          less = array[1..-1].select { |x| x <= pivot}
          greater = array[1..-1].select { |x| x > pivot }

          sort(less) + [pivot] + sort(greater)
        end
      end
    end
  end
end
