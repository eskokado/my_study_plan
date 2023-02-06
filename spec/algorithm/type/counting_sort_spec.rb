require_relative '../../../app/algorithm/type/counting_sort'

describe "Counting Sort" do
  it "Counting Sort" do
    newArray = countSort([-5, -10, 0, -3, 8, 5, -1, 10])
    expect(newArray).to eq([-10, -5, -3, -1, 0, 5, 8, 10])
  end
end
