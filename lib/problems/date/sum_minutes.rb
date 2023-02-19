require 'time'
module Problems
  module Date
    def self.sum_minutes(time_str, k)
      time = Time.parse(time_str)
      result_time = time + (k * 60)
      result_time.strftime('%H:%M')
    end
  end
end
