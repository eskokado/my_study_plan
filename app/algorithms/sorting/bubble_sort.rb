class BubbleSort
  def sort(arr)
    n = arr.size()
    for i in 0..(n - 2)
      for j in 0..(n - i - 2)
        if arr[j] > arr[j + 1]
          temp = arr[j]
          arr[j] = arr[j + 1]
          arr[j + 1] = temp
        end
      end
    end
    return arr
  end
end
