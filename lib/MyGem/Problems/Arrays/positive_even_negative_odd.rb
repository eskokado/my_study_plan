module MyGem
  module Problems
    module Arrays
      class PositiveEvenNegativeOdd
        def self.handle(arr)
          pos = arr.select {|x| x >= 0}
          neg = arr.select {|x| x < 0}
          result = Array.new(arr.length)
          pos_idx, neg_idx = 0, 1
          arr.each do |x|
            if x >= 0
              result[pos_idx] = x
              pos_idx += 2
            else
              result[neg_idx] = x
              neg_idx += 2
            end
          end
          result
        end
      end
    end
  end
end
