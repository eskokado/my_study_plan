require_relative '../../../../lib/MyGem/Algorithms/Searching/jump_search'
describe "Jump Search" do
  arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 55, 77, 89, 101, 201, 256, 780]
  expectValue = 10
  size = arr.size
  jumpSearch = MyGem::Algorithms::Searching::JumpSearch.new
  item = 77
  it "Given array call jump search result #{expectValue}" do
    result = jumpSearch.search(arr, size, item)
    expect(result).to eq(expectValue)
  end

end
