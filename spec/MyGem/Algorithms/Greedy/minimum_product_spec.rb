require_relative '../../../../lib/MyGem/Algorithms/Greedy/minimum_product'

describe "Miminum product subset of an array" do
  it 'Given array a, we have to find the minimum product in the array' do
    arr = [-1, -1, -2, 4, 3]
    result = MyGem::Algorithms::Greedy::MinimumProduct.minProd(arr)
    expect(result).to eq(-24)
  end
end
