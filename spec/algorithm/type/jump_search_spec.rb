require_relative '../../../app/algorithm/type/jump_search'
describe "Jump Search" do
  arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 55, 77, 89, 101, 201, 256, 780]
  expectValue = 10
  size = arr.size
  jumpSearch = JumpSearch.new
  it "Given array call jump search result #{expectValue}" do
    jumpSearch.search(arr, size, 77)
  end
end
