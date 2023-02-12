require_relative '../../../app/algorithms/sorting/merge_sort'
describe "Merge Sort" do
  arr = [38, 27, 43, 3, 9, 82, 10]
  it "Given an array call merge sort return an array sorting" do
    result = Algorithms::Sorting.merge_sort(arr)
    expect(result).to eq([3, 9, 10, 27, 38, 43, 82])
  end
end
