require_relative '../../../app/problems/type/array_find_three'

describe "Print 3 largest" do
  it "should array size < 3 return message error" do
    arr = [1,2]
    printLargest = PrintLargest.new
    result = printLargest.print3largest(arr)
    expect(result).to eq("Invalid Input")
  end
end
