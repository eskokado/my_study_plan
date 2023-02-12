require_relative '../../../app/algorithms/greedy/maximize_array'

describe "Maximize Array" do
  it "program to find maximum array sum after at most k negations " do
    arr = [-2, 0, 5, -1, 2]
    k = 4
    n = arr.size
    maximizeArray = MaximizeArray.new
    result = maximizeArray.sum(arr, n, k)

    expect(result).to eq(10)
  end
end
