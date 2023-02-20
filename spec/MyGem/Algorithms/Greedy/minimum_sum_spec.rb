require_relative '../../../../lib/MyGem/Algorithms/Greedy/minimum_sum'

describe "Minimum Sum" do
  it "Ensure minimum sum" do
    array = [3, 6, 2, 8, 7, 5]
    n = array.size
    minValue = MyGem::Algorithms::Greedy::MinimumSum.minSum(array, n)
    expect(minValue).to  eq(10)
  end
end
