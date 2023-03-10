require_relative '../../../../lib/MyGem/Problems/Arrays/array_find_three'

describe "Print 3 largest" do
  it "should array size < 3 return message error" do
    arr = [1,2]
    printLargest = MyGem::Problems::Arrays::PrintLargest.new
    result = printLargest.print3largest(arr)
    expect(result).to eq("Invalid Input")
  end
  it "Given array size correct return message" do
    arr = [12, 13, 1, 10, 34, 1]
    printLargest = MyGem::Problems::Arrays::PrintLargest.new
    result = printLargest.print3largest(arr)
    expect(result).to eq("Three largest elements are 34 13 12")
  end
end
