require_relative '../../../lib/problems/array/array_reversal'

describe "Reversal array" do
  it "Should call reversal array return string" do
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    n = arr.size
    k = 3

    arrayReversal = ArrayReversal.new(arr)
    arrayReversal.right_rotate(k, n)
    result = arrayReversal.result_array

    expect(result).to eq("8 9 10 1 2 3 4 5 6 7")
  end
end
