module Algorithms
  module Greedy
    def self.job_sequencing(jobs, n)
      jobs.sort! { |a, b| b[2] <=> a[2] }

      result = Array.new(n, -1)

      slot = Array.new(n, false)

      for i in 0...n
        for j in (jobs[i][1] - 1).downto(0)
          if !slot[j]
            result[j] = i
            slot[j] = true
            break
          end
        end
      end

      result
    end
  end
end
