require_relative '../../../app/algorithm/type/bubble_sort'
describe "Bubble Sort" do
  array = [5, 1, 4, 2, 8]
  it "Sorting ascending" do
    result = bubbleSort(array)
    expect(result).to eq([1, 2, 4, 5, 8])
  end
end
