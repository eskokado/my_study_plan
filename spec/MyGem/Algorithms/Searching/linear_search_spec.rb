require_relative '../../../../lib/MyGem/Algorithms/Searching/linear_search'
# require 'lib/MyGem/Algorithms/Searching/linear_search'
describe "Linear Search" do
  value = 20
  array = [10, 50, 30, 70, 80, 60, 20, 90, 40]
  # linearSearch = MyGem::Algorithms::Searching::LinearSearch.new
  it "ensure search element #{value} is found" do
    result = MyGem::Algorithms::Searching::LinearSearch.search_array(array, value)
    expect(result).to eq("Target element is found")
  end

  value_invalid = 75
  it "Ensure Search element(#{value_invalid}) result not found" do
    result = MyGem::Algorithms::Searching::LinearSearch.search_array(array, value_invalid)
    expect(result).to eq("Element is not found")
  end

  value_valid = 110
  array = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]
  it "ensure found #{value_valid} in array result index and element" do
    result = MyGem::Algorithms::Searching::LinearSearch.search_array_index(array, value_valid)
    expect(result).to eq("Element 110 is present at index 6")
  end

  value_invalid = 175
  it "ensure search by element #{value_invalid} is not present in array" do
    result = MyGem::Algorithms::Searching::LinearSearch.search_array_index(array, value_invalid)
    expect(result).to eq("Element 175 is not present in array")
  end
end
