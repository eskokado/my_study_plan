require_relative '../../../lib/algorithms/sorting/quick_sort'
describe "Quick Sort" do
  arr = [5, 2, 9, 1, 5, 6]
  it "Given an array call quick sort return an array sorted" do
    result = Algorithms::Sorting.quick_sort(arr)
    expect(result).to eq([1, 2, 5, 5, 6, 9])
  end
end
