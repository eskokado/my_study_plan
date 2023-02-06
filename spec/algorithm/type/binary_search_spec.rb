require_relative '../../../app/algorithm/type/binary_search'
describe "Binary Search" do
  it "Ensure call binarySearch function in array search return 6" do
    array = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]
    index = binarySearch(array, 110, nil, nil)
    expect(index).to eq(6)
  end
end