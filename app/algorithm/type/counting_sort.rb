def countSort(arr)
  max = arr.max()
  min = arr.min()

  range = max - min + 1

  count = Array.new(range)
  output = Array.new(arr.size)

  for value in arr
    if count[value - min] == nil
      count[value - min] = 1
    else
      count[value - min] += 1
    end
  end

  count.each_with_index do |value, index|
    if count[index] == nil
      count[index] = count[index - 1]
    else
      count[index] += count[index - 1]
    end
  end

  arr.to_enum.with_index.reverse_each do |value, index|
    output[count[arr[index] - min] - 2] = arr[index]
    count[arr[index] - min] -= 1
  end

  arr.each_with_index do |value, index|
    arr[index] = output[index]
  end
  return arr
end
