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
