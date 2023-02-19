class MinimumProduct
  def minProd(arr)
    result = 1
    for i in 0..(arr.size - 1)
      result *= arr[i]
    end
    result
  end
end
