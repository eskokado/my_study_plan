module Algorithms
  module Greedy
    def self.fractional_knapsack(weights, values, capacity)
      items = weights.zip(values).map {|w, v| [v.to_f / w, w, v] }
      items.sort_by! { |ratio, w, v| -ratio}

      total_value = 0
      items.each do |ratio, w, v|
        break if capacity == 0
        amount = [capacity, w].min
        total_value += ratio * amount
        capacity -= amount
      end

      total_value.round(3)
    end
  end
end
