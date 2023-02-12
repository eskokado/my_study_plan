require_relative '../../../app/algorithms/sorting/selection_sort'
describe "Selection Sort" do
  array = [64, 25, 12, 22, 11]
  it "Given an array call selection sort return array sort" do
    result = Algorithms::Sorting.selection_sort(array)
    expect(result).to eq ([11, 12, 22, 25, 64])
  end
end
