require_relative '../../../app/problems/array/reorder_index'
describe "Reorder Index" do
  it "returns the indexes of an array in ascending order" do
    arr = [5, 2, 8, 4, 9]
    expect(Problems::Arrays.reorder_index(arr, :asc)).to eq([1, 3, 0, 2, 4])
  end

  it "returns the indexes of an array in descending order" do
    arr = [5, 2, 8, 4, 9]
    expect(Problems::Arrays.reorder_index(arr, :desc)).to eq([4, 2, 0, 3, 1])
  end

  it "raises an ArgumentError if the order parameter is invalid" do
    arr = [5, 2, 8, 4, 9]
    expect { Problems::Arrays.reorder_index(arr, :invalid) }.to raise_error(ArgumentError)
  end
end
