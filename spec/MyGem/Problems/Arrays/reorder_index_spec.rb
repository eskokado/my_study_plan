require_relative '../../../../lib/MyGem/Problems/Arrays/reorder_index'
describe "Reorder Index" do
  it "returns the indexes of an array in ascending order" do
    arr = [5, 2, 8, 4, 9]
    expect(MyGem::Problems::Arrays::ReorderIndex.handle(arr, :asc)).to eq([1, 3, 0, 2, 4])
  end

  it "returns the indexes of an array in descending order" do
    arr = [5, 2, 8, 4, 9]
    expect(MyGem::Problems::Arrays::ReorderIndex.handle(arr, :desc)).to eq([4, 2, 0, 3, 1])
  end

end
