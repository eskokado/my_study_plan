require_relative '../../../../lib/MyGem/Algorithms/Greedy/maximize_array'

describe "Maximize Array" do
  it "program to find maximum array sum after at most k negations " do
    arr = [-2, 0, 5, -1, 2]
    k = 4
    n = arr.size
    result = MyGem::Algorithms::Greedy::MaximizeArray.sum(arr, n, k)

    expect(result).to eq(10)
  end
end
