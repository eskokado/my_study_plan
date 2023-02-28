require_relative '../../../../lib/MyGem/Algorithms/Greedy/min_sum_of_product'
describe "Minimum Sum Of Product" do
  arrayA = [3, 1, 4]
  arrayB = [2, 5, 6]
  it "Given two arrays call min sum of product return the result" do
    result = MyGem::Algorithms::Greedy::MinSumOfProduct.handle(arrayA, arrayB)

    expect(result).to eq(41)
  end
end
