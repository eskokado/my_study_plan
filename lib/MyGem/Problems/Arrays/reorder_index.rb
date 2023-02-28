module MyGem
  module Problems
    module Arrays
      class ReorderIndex
        def self.handle(arr, order)
          indexes = (0...arr.length).to_a

          if order == :asc
            indexes.sort_by { |i| arr[i]}
          elsif order == :desc
            indexes.sort_by { |i| -arr[i]}
          else
            raise ArgumentError, "Invalid order parameter. Valid options are :asc or :desc."
          end
        end
      end
    end
  end
end
