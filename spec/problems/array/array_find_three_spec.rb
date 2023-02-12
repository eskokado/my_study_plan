require_relative '../../../app/problems/array/array_find_three'

describe "Print 3 largest" do
  it "should array size < 3 return message error" do
    arr = [1,2]
    printLargest = PrintLargest.new
    result = printLargest.print3largest(arr)
    expect(result).to eq("Invalid Input")
  end
  it "Given array size correct return message" do
    arr = [12, 13, 1, 10, 34, 1]
    printLargest = PrintLargest.new
    result = printLargest.print3largest(arr)
    expect(result).to eq("Three largest elements are 34 13 12")
  end
end
