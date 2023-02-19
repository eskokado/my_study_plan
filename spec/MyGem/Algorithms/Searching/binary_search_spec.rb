require_relative '../../../../lib/MyGem/Algorithms/Searching/binary_search'
describe "Binary Search" do
  # binarySearch = BinarySearch.new
  it "Ensure call binarySearch function in array search return 6" do
    array = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]
    index = MyGem::Algorithms::Searching::BinarySearch.binarySearch(array, 110, nil, nil)
    expect(index).to eq(6)
  end

  it "Ensure function binarySearch in array search 175 return -1" do
    array = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]
    index = MyGem::Algorithms::Searching::BinarySearch.binarySearch(array, 175, nil, nil)
    expect(index).to eq(-1)
  end

  it "Ensure function binarySearch in array search 23 return 5" do
    array = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]
    index = MyGem::Algorithms::Searching::BinarySearch.binarySearch(array, 23, 0, array.size)
    expect(index).to eq(5)
  end
end
