module MyGem
  module Problems
    module Dates
      class FindDateFuture
        def comparator(s, t)
          ss = s.split("/")
          tt = t.split("/")

          date1 = []
          date2 = []

          for i in 0..2
            date1[i] = ss[i].to_i
            date2[i] = tt[i].to_i
          end

          if date1[2] != date2[2]
            return date1[2] - date2[2]
          elsif date1[1] != date2[1]
            return date1[1] - date2[1]
          elsif date1[0] != date2[0]
            return date1[0] - date2[0]
          end
          return 0
        end

        def next_closest_date(arr, q)
          arr.sort! {|a, b| comparator(a, b)}

          l = 0
          r = arr.size - 1
          ind = -1

          while l <= r
            m = (l + r) / 2
            c = comparator(q, arr[m])

            if c == 0
              ind = m
              break
            elsif c < 0
              r = m - 1
              ind = m
            else
              l = m + 1
            end
          end

          if ind != -1
            arr[ind]
          else
            -1
          end
        end

        def perform_queries(arr, q)
          result = []
          for i in 0..q.size - 1
            result.push(next_closest_date(arr, q[i]))
          end
          result
        end
      end
    end
  end
end
