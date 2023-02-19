class PrintLargest
  def print3largest(arr)
    arr_size = arr.size
    if arr_size < 3
      return "Invalid Input"
    end
    third = 0
    first = 0
    second = 0

    for i in 0..(arr_size - 1)
      if arr[i] > first
        third = second
        second = first
        first = arr[i]
      elsif arr[i] > second && arr[i] != first
        third = second
        second = arr[i]
      elsif arr[i] > third && arr[i] != second
        third = arr[i]
      end
    end
    "Three largest elements are #{first} #{second} #{third}"
  end
end
