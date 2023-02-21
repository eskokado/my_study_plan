module MyGem
  module Problems
    module Strings
      class CountingString
        attr_accessor :countUpper, :countLower, :countNumber, :countSpecial

        def initialize
          @countUpper = 0
          @countLower = 0
          @countNumber = 0
          @countSpecial = 0
        end
        def count(str)
          for i in 0..(str.size - 1)
            if str[i] >= 'A' && str[i] <= 'Z'
              @countUpper += 1
            elsif str[i] >= 'a' && str[i] <= 'z'
              @countLower += 1
            elsif str[i] >= '0' && str[i] <= '9'
              @countNumber += 1
            else
              @countSpecial += 1
            end
          end
        end
      end
    end
  end
end
