module Algorithms
  module Sorting
    def self.quick_sort(array)
      return array if array.length <= 1

      pivot = array.first
      less = array[1..-1].select { |x| x <= pivot}
      greater = array[1..-1].select { |x| x > pivot }

      quick_sort(less) + [pivot] + quick_sort(greater)
    end
  end
end
