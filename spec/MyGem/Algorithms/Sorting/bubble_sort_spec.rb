require_relative '../../../../lib/MyGem/Algorithms/Sorting/bubble_sort'
describe "Bubble Sort" do
  array = [5, 1, 4, 2, 8]
  it "Sorting ascending" do
    result = MyGem::Algorithms::Sorting::BubbleSort.sort(array)
    expect(result).to eq([1, 2, 4, 5, 8])
  end
end
