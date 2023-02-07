require_relative '../../../app/algorithm/type/minimum_product'

describe "Miminum product subset of an array" do
  minimumProduct = MinimumProduct.new
  it 'Given array a, we have to find the minimum product in the array' do
    arr = [-1, -1, -2, 4, 3]
    result = minimumProduct.minProd(arr)
    expect(result).to eq(-24)
  end
end
