module MyGem
  module Algorithms
    module Greedy
      class FindMaximum
        def self.find(stack1, stack2, stack3, n1, n2, n3)
          sum1 = 0
          sum2 = 0
          sum3 = 0

          for i in 0..(n1 - 1)
            sum1 += stack1[i]
          end

          for i in 0..(n2 - 1)
            sum2 += stack2[i]
          end

          for i in 0..(n3 - 1)
            sum3 += stack3[i]
          end

          top1 = 0
          top2 = 0
          top3 = 0

          while true do
            if top1 == n1 || top2 == n2 || top3 == n3
              return 0
            end
            if sum1 == sum2 && sum2 == sum3
              return sum1
            end

            if sum1 >= sum2 && sum1 >= sum3
              sum1 -= stack1[top1]
              top1 += 1
            elsif sum2 >= sum1 && sum2 >= sum3
              sum2 -= stack2[top2]
              top2 += 1
            elsif sum3 >= sum2 && sum3 >= sum1
              sum3 -= stack3[top3]
              top3 += 1
            end
          end
        end
      end
    end
  end
end
