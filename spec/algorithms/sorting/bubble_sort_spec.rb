require_relative '../../../app/algorithms/sorting/bubble_sort'
describe "Bubble Sort" do
  array = [5, 1, 4, 2, 8]
  bubbleSort = BubbleSort.new
  it "Sorting ascending" do
    result = bubbleSort.sort(array)
    expect(result).to eq([1, 2, 4, 5, 8])
  end
end
