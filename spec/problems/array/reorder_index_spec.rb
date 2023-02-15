require_relative '../../../app/problems/array/reorder_index'
describe "Reorder Index" do
  it "returns the indexes of an array in ascending order" do
    arr = [5, 2, 8, 4, 9]
    expect(Problems::Arrays.reorder_index(arr, :asc)).to eq([1, 3, 0, 2, 4])
  end
end
