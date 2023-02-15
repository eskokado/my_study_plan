require_relative '../../../app/algorithms/greedy/min_sum_of_product'
describe "Minimum Sum Of Product" do
  arrayA = [3, 1, 4]
  arrayB = [2, 5, 6]
  it "Given two arrays call min sum of product return the result" do
    result = Algorithms::Greedy.min_sum_of_product(arrayA, arrayB)

    expect(result).to eq(41)
  end
end
