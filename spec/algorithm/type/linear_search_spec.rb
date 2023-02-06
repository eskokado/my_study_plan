require_relative '../../../app/algorithm/type/linear_search'
describe "Linear Search" do
  value = 20
  array = [10, 50, 30, 70, 80, 60, 20, 90, 40]
  it "ensure search element #{value} is found" do
    result = search_array(array, value)
    expect(result).to eq("Target element is found")
  end

  value_invalid = 75
  it "Ensure Search element(#{value_invalid}) result not found" do
    result = search_array(array, value_invalid)
    expect(result).to eq("Element is not found")
  end
end
