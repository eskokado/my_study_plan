module MyGem
  module Algorithms
    module Greedy
      class Graph
        def self.frac_knap_sack(items, w)
          # Sort items based on cost per units
          items.sort!

          # Traverse items, if it can fit, take it all, else take fraction
          total_val = 0.0
          curr_w = 0

          items.each do |item|
            remaining = w - curr_w

            # If the whole item can be taken, take it
            if item.weight <= remaining
              total_val += item.value
              curr_w += item.weight
            else # Add fraction until we run out of space
              break if remaining == 0

              fraction = remaining.to_f / item.weight
              total_val += fraction * item.value
              curr_w += (fraction * item.weight).to_i
            end
          end

          return total_val.round(1)
        end
      end

      class Item < Graph
        attr_reader :value, :weight

        def initialize(value, weight)
          @value = value
          @weight = weight
          super()
        end

        def <=>(other)
          cpr1 = value.to_f / weight
          cpr2 = other.value.to_f / other.weight
          cpr2 <=> cpr1
        end
      end
    end
  end
end
