require_relative '../../../app/algorithms/searching/find_missing_number'

describe "Find Missing Number" do
  array = [1, 2, 4, 5, 6, 7, 8]
  it "Given an array call find missing number e return 3" do
    result = Algorithms::Searching.find_missing_number(array)
    expect(result).to eq(3)
  end
end
