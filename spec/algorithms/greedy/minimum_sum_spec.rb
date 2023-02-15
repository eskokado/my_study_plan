require_relative '../../../app/algorithms/greedy/minimum_sum'

describe "Minimum Sum" do
  it "Ensure minimum sum" do
    @array = [3, 6, 2, 8, 7, 5]
    @n = @array.size
    minimumSum = MinimumSum.new
    @minValue = minimumSum.minSum(@array, @n)
    expect(@minValue).to  eq(10)
  end
end
