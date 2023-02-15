class LinearSearch
  def search_array(arr, value_search)
    message = "Element is not found"
    for value in arr do
      if value == value_search
        message = "Target element is found"
        break
      end
    end
    return message
  end
  
  def search_array_index(arr, value_search)
    message = "Element #{value_search} is not present in array"
    arr.each_with_index do |value, index|
      if value == value_search
        message = "Element #{value_search} is present at index #{index}"
        break
      end
    end
    return message
  end
end
