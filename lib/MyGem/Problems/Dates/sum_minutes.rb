require 'time'
module MyGem
  module Problems
    module Dates
      class SumMinutes
        def self.sum(time_str, k)
          time = Time.parse(time_str)
          result_time = time + (k * 60)
          result_time.strftime('%H:%M')
        end
      end
    end
  end
end
